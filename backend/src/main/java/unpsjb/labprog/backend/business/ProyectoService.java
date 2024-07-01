package unpsjb.labprog.backend.business;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import unpsjb.labprog.backend.model.Proyecto;
import unpsjb.labprog.backend.model.Tarea;

@Service
public class ProyectoService {

    @Autowired
    ProyectoRepository repository;

    public List<Proyecto> findAll() {
        List<Proyecto> result = new ArrayList<>();
        repository.findAll().forEach(e -> result.add(e));
        return result;
    }

    public Proyecto findById(int id) {
        return repository.findById(id).orElse(null);
    }

    public Proyecto findByCode(String code) {
        return repository.findByCode(code).orElse(null);
    }

    public List<Proyecto> search(String term) {
        return repository.search("%" + term.toUpperCase() + "%");
    }

    public List<Tarea> searchTareas(String term, int proyectoId) {
        return repository.searchTareas("%" + term.toUpperCase() + "%", proyectoId);
    }

    @Transactional
    public Proyecto save(Proyecto e) {
        try {
            return repository.save(e);
        } catch (DataIntegrityViolationException ex) {
            throw new RuntimeException();
        }
    }

    @Transactional
    public Proyecto create(Proyecto aProyecto) {
        try {
            return repository.save(aProyecto);
        } catch (DataIntegrityViolationException ex) {
            throw new RuntimeException();
        }
    }

    public Page<Proyecto> findByPage(int page, int size, Sort sort) {
        return repository.findAll(PageRequest.of(page, size, sort));
    }

    @Transactional
    public Proyecto delete(Proyecto proy) {
        try {
            if (proy != null) {
                repository.delete(proy);
            }
            return proy;
        } catch (DataIntegrityViolationException e) {
            throw new RuntimeException();

        }

    }

}
