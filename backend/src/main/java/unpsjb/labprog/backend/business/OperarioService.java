package unpsjb.labprog.backend.business;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import unpsjb.labprog.backend.model.HistorialTurnos;
import unpsjb.labprog.backend.model.Operario;
import unpsjb.labprog.backend.presenter.SuperposicionException;
import unpsjb.labprog.backend.presenter.TurnoNoExistenteException;

@Service
public class OperarioService {

    @Autowired
    OperarioRepository repository;

    @Autowired
    TipoTurnoService tipoTurnoService;

    public List<Operario> findAll() {
        List<Operario> result = new ArrayList<>();
        repository.findAll().forEach(e -> result.add(e));
        return result;
    }

    public Operario findById(int id) {
        return repository.findById(id).orElse(null);
    }

    public Operario findByLegajo(int id) {
        return repository.findByLegajo(id).orElse(null);

    }

    public List<Operario> search(String term) {
        return repository.search("%" + term.toUpperCase() + "%");
    }


    @Transactional
    public Operario delete(Operario operario) {
        try {
            if (operario != null) {
                repository.delete(operario);
            }
            return operario;
        } catch (DataIntegrityViolationException e) {
            throw new RuntimeException();
        }
    }
 

    @Transactional
    public Operario save(Operario aOperario) {
        if (haySuperposicionDeFechas(aOperario)) {
            throw new SuperposicionException();
        }
        for (HistorialTurnos ht : aOperario.getHistorialTurnos()) {
            if (ht.getFechaDesde().isBefore(ht.getTipoTurno().getFechaArranque())) {
                throw new TurnoNoExistenteException();
            }
        }
        return repository.save(aOperario);
    }
   
  
    private boolean haySuperposicionDeFechas(Operario aOperario) {
        List<HistorialTurnos> historicoTurnos = aOperario.getHistorialTurnos();

        if (historicoTurnos.size() == 1 && historicoTurnos.get(0).getFechaHasta() == null) {
            return false; // Solo hay un historial de turno con fechaHasta nula, no hay superposición
        }

        for (int i = 0; i < historicoTurnos.size(); i++) {
            HistorialTurnos actual = historicoTurnos.get(i);

            for (int j = i + 1; j < historicoTurnos.size(); j++) {
                HistorialTurnos siguiente = historicoTurnos.get(j);

                // Verificamos si hay superposición entre el turno actual y el siguiente
                if (seSuperponen(actual.getFechaDesde(), actual.getFechaHasta(), siguiente.getFechaDesde(),
                        siguiente.getFechaHasta())) {
                    return true;
                }

                // Verificamos si hay superposición del turno siguiente con un turno vigente
                if (actual.getFechaHasta() == null && seSuperponen(actual.getFechaDesde(), null,
                        siguiente.getFechaDesde(), siguiente.getFechaHasta())) {
                    return true;
                }

                // Verificamos si hay superposición del turno actual con un turno vigente
                if (siguiente.getFechaHasta() == null && seSuperponen(siguiente.getFechaDesde(), null,
                        actual.getFechaDesde(), actual.getFechaHasta())) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean seSuperponen(LocalDate fechaDesdeActual, LocalDate fechaHastaActual, LocalDate fechaDesdeSiguiente,
            LocalDate fechaHastaSiguiente) {
        if (fechaDesdeActual == null || fechaDesdeSiguiente == null) {
            return false;
        }

        if (fechaHastaActual == null) {
            fechaHastaActual = LocalDate.MAX; // Consideramos como una fecha en el futuro lejano
        }

        if (fechaHastaSiguiente == null) {
            fechaHastaSiguiente = LocalDate.MAX; // Consideramos como una fecha en el futuro lejano
        }

        // Verificamos si los rangos se superponen
        return !fechaDesdeActual.isAfter(fechaHastaSiguiente) && !fechaDesdeSiguiente.isAfter(fechaHastaActual);
    }

    public Page<Operario> findByPageOper(int page, int size, String textoBusqueda) {
        PageRequest pageRequest = PageRequest.of(page, size, Sort.by("name").ascending());
        if (textoBusqueda == null || textoBusqueda.trim().isEmpty()) {
            return repository.findAll(pageRequest);
        }
        return repository.findOperarioByFiltros("%" + textoBusqueda.toLowerCase() + "%",
                pageRequest);
    }

}
