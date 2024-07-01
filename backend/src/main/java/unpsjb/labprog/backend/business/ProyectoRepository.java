package unpsjb.labprog.backend.business;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import unpsjb.labprog.backend.model.Proyecto;
import unpsjb.labprog.backend.model.Tarea;

public interface ProyectoRepository extends CrudRepository<Proyecto, Integer>,PagingAndSortingRepository<Proyecto, Integer>{
    @Query("SELECT e FROM Proyecto e WHERE e.code=?1")
    Optional<Proyecto> findByCode(String code);

        @Query("SELECT DISTINCT p FROM Proyecto p JOIN p.tareas t WHERE (LOWER(p.description) LIKE LOWER(CONCAT('%', ?1, '%')) OR p.code LIKE CONCAT('%', ?1, '%'))")
List<Proyecto> search(String term);


        @Query("SELECT t FROM Proyecto p JOIN p.tareas t WHERE p.id = :proyectoId AND (LOWER(t.code) LIKE LOWER(CONCAT('%', :term, '%')) OR LOWER(t.description) LIKE LOWER(CONCAT('%', :term, '%')))")
        List<Tarea> searchTareas(String term, int proyectoId);
        
}

