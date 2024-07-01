package unpsjb.labprog.backend.business;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import unpsjb.labprog.backend.model.Estado;
import unpsjb.labprog.backend.model.LogValidacionParteMO;
import unpsjb.labprog.backend.model.ValidacionParteMO;

@Service
public class LogValidacionService {

    @Autowired
    LogValidacionRepository repository;

    @Autowired
    EstadoService estadoService;

    @Autowired
    ValidacionParteService validacionParteService;

    public LogValidacionParteMO agregarLog(Estado estado, ValidacionParteMO validacion) {

        LogValidacionParteMO log = new LogValidacionParteMO();
        log.setFecha(LocalDate.now());
        log.setHora(LocalTime.now());
        log.setEstado(estado);

        log.setValidacionParteMO(validacion);
        repository.save(log);

        return log;

    }

    public List<LogValidacionParteMO> findAll() {
        List<LogValidacionParteMO> result = new ArrayList<>();
        repository.findAll().forEach(e -> result.add(e));
        return result;
    }

}
