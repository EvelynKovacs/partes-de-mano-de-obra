package unpsjb.labprog.backend.business;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;
import unpsjb.labprog.backend.model.Tarea;

@Service
public class TareaService {

    @Autowired
    TareaRepository repository;

    public List<Tarea> findAll() {
        List<Tarea> result = new ArrayList<>();
        repository.findAll().forEach(e -> result.add(e));
        return result;
    }

    public Tarea findById(int id) {
        return repository.findById(id).orElse(null);
    }

    public Tarea findByCode(String code) {
        return repository.findByCode(code);
    }

     public List<Tarea> search(String term, int proyectoId) {
        return repository.search("%" + term.toUpperCase() + "%", proyectoId);
    }

     @Transactional
    public Tarea save(Tarea e) {
        try {
            return repository.save(e);
        } catch (DataIntegrityViolationException t) {
            throw new RuntimeException();

        }
    }
 
    @Transactional
    public Tarea create(Tarea aTarea) {
        try {
            return repository.save(aTarea);
        } catch (DataIntegrityViolationException t) {
            throw new RuntimeException();

        }
    }

    public Page<Tarea> findByPage(int page, int size, Sort sort) {
        return repository.findAll(PageRequest.of(page, size, sort));
    }

    @Transactional
    public Tarea deleteByCode(Tarea tarea) {
        try {
            Tarea t = repository.findByCode(tarea.getCode());
            if (t != null) {
                repository.delete(t);
            }
            return tarea;
        } catch (DataIntegrityViolationException e) {
            throw new RuntimeException();
        }
    }

}
