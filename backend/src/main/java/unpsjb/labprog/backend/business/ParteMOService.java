package unpsjb.labprog.backend.business;

import java.time.LocalDate;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;
import unpsjb.labprog.backend.business.validar.ValidadorParteMO;
import unpsjb.labprog.backend.model.Estado;
import unpsjb.labprog.backend.model.LogValidacionParteMO;
import unpsjb.labprog.backend.model.Operario;
import unpsjb.labprog.backend.model.ParteMO;
import unpsjb.labprog.backend.model.ResumenDTO;
import unpsjb.labprog.backend.model.ValidacionParteMO;

@Service
public class ParteMOService {

    @Autowired
    ParteMORepository repository;

    @Autowired
    EstadoService estadoService;

    @Autowired
    OperarioService operarioService;

    @Autowired
    LogValidacionService logService;

    @Autowired
    ProyectoService proyectoService;

    @Autowired
    TareaService tareaService;

    @Autowired
    ValidacionParteService validacionService;

    @Autowired
    TipoTurnoService tipoTurnoService;

    @Autowired
    List<ValidadorParteMO> validadores;

    public List<ParteMO> findAll() {
        return repository.findAll();

    }


    public ParteMO findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Transactional
    public ParteMO save(ParteMO p) {


        verificarEstadoPartes(p, estadoService.parteCorregido());

        Estado generado = estadoService.parteGenerado();
        p.setEstado(generado);

        return repository.save(p);

    }
   

    public void verificarEstadoPartes(ParteMO p, Estado estado) {
        List<ParteMO> partes = resumenOperario(p.getOperario().getLegajo(), p.getFecha());

        for (ParteMO parte : partes) {

            if (parte.getEstado() != estado && parte.getEstado() != estadoService.parteGenerado()
                    && parte.getEstado() != estadoService.parteAnulado()) {
                parte.setEstado(estado);
                repository.save(parte);
            }
        }

    }

    @Transactional
    public ParteMO update(ParteMO p) {
        verificarEstadoPartes(p, estadoService.parteCorregido());

        p.setEstado(estadoService.parteCorregido());
        return repository.save(p);

    }

    public Page<ParteMO> findByPage(int page, int size, Sort sort) {
        return repository.findAll(PageRequest.of(page, size, sort));
    }

    public void validarParteAlaFecha(LocalDate fecha) {
        Collection<ResumenDTO> partesAvalidar = repository.validarPartesAlaFecha(fecha);
        this.validarPartes(partesAvalidar);

    }

    public void validarPartes(Collection<ResumenDTO> partes) {

        for (ResumenDTO resumenParte : partes) {

            this.invalidarLogs(getResumentOperarioFecha(resumenParte));

            this.setearTodosPartesValidos(getResumentOperarioFecha(resumenParte));

            for (ParteMO parte : getResumentOperarioFecha(resumenParte)) {

                    for (ValidadorParteMO validador : validadores) {
                        validador.validar(resumenParte, parte);
                    }
                
            
            if (parte.getEstado() == estadoService.parteValido()) {
                Estado validado = estadoService.logValidado();
                this.agregarLog(validado, parte, validacionService.validacionExitosa());
    
            }

            }
        }

    }

    




    public ParteMO anularParte(ParteMO parte) {
        try {
            verificarEstadoPartes(parte, estadoService.parteCorregido());
            parte.setEstado(estadoService.parteAnulado());
            return repository.save(parte);
        } catch (DataIntegrityViolationException e) {
            throw new RuntimeException();

        }

    }

    public List<ParteMO> ultimos(int n) {
        return repository.ultimos(n);
    }

    public List<ParteMO> partesInvalidos() {
        return repository.partesInvalidos();
    }

    public ParteMO parteDadoProyectoYTarea(LocalDate fecha, String legajoOperario, String codigoProyecto,
            String codigoTarea) {
        return repository.parteDadoProyectoYTarea(fecha, operarioService.findByLegajo(Integer.parseInt(legajoOperario)),
                proyectoService.findByCode(codigoProyecto), tareaService.findByCode(codigoTarea));
    }

    public List<ParteMO> resumenOperario(Integer legajo, LocalDate fecha) {
        return repository.resumenOperario(legajo, fecha);
    }

    public Page<ResumenDTO> findByPageResumen(LocalDate fecha, int page, int size, Sort sort) {
        return repository.resumenFecha(fecha, PageRequest.of(page, size, sort));
    }

    public Page<ResumenDTO> getInvalidosPage(LocalDate fecha, int page, int size, Sort sort) {
        return repository.getInvalidos(fecha, PageRequest.of(page, size, sort));
    }

    public Page<ResumenDTO> getValidosPage(LocalDate fecha, int page, int size, Sort sort) {
        return repository.getValidos(fecha, PageRequest.of(page, size, sort));
    }

    public Page<ResumenDTO> getTodosPage(LocalDate fecha, int page, int size, Sort sort) {
        return repository.getTodos(fecha, PageRequest.of(page, size, sort));
    }

    public List<LogValidacionParteMO> getLogsOperarioFecha(int id) {
        return repository.getLogsOperarioFecha(id);
    }

    public List<ParteMO> forzarValidacion(int legajo, LocalDate fecha) {
        Operario operario = operarioService.findByLegajo(legajo);
        List<ParteMO> partes = this.resumenOperario(operario.getLegajo(), fecha);
        this.invalidarLogs(partes);
        for (ParteMO parte : partes) {
            if (parte.getEstado() != estadoService.parteAnulado()) {
                this.agregarLog(estadoService.logValidado(), parte, validacionService.validacionForzada());
                parte.setEstado(estadoService.parteValidadoPorSupervisor());
                repository.save(parte);
            }
        }
        return partes;
    }

    public List<ParteMO> rechazarPartes(int legajo, LocalDate fecha) {
        Operario operario = operarioService.findByLegajo(legajo);
        List<ParteMO> partes = this.resumenOperario(operario.getLegajo(), fecha);
        this.invalidarLogs(partes);
        for (ParteMO parte : partes) {
            if (parte.getEstado() != estadoService.parteAnulado()) {

                this.agregarLog(estadoService.logGenerado(), parte, validacionService.rechazado());
                parte.setEstado(estadoService.parteRechazado());
                repository.save(parte);
            }
        }
        return partes;
    }

    public List<ParteMO> partesConEstadoCorregido() {
        return repository.partesConEstadoCorregido();
    }

    public void invalidarParte(ParteMO parte) {

        parte.setEstado(estadoService.parteInvalido());
        repository.save(parte);

    }

    public void agregarLog(Estado estado, ParteMO parte, ValidacionParteMO validacion) {

        LogValidacionParteMO log = logService.agregarLog(estado, validacion);

        parte.getLogValidacionParteMO().add(log);
        repository.save(parte);

    }

    public void invalidarLogs(List<ParteMO> partes) {
        for (ParteMO parte : partes) {
            for (LogValidacionParteMO l : parte.getLogValidacionParteMO()) {

                l.setEstado(estadoService.logCaducado());

            }
        }

    }

    public void setearTodosPartesValidos(List<ParteMO> partes) {
        for (ParteMO parte : partes) {
            {
                parte.setEstado(estadoService.parteValido());
                repository.save(parte);
            }
        }

    }

    public List<ParteMO> getResumentOperarioFecha(ResumenDTO resumenParte) {
        return resumenOperario(resumenParte.getLegajo(), resumenParte.getFecha())
                .stream()
                .filter(parte -> !parte.getEstado().getNombre().equalsIgnoreCase("anulado"))
                .collect(Collectors.toList());

    }

}
