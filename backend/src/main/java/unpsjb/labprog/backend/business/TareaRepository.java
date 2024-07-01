package unpsjb.labprog.backend.business;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import unpsjb.labprog.backend.model.Tarea;

public interface TareaRepository extends CrudRepository<Tarea, Integer>,PagingAndSortingRepository<Tarea, Integer>{
    @Query("SELECT e FROM Tarea e WHERE e.code=?1")
    Tarea findByCode(String code);

   
    @Query("SELECT t FROM Proyecto p JOIN p.tareas t WHERE p.id = ?2 AND LOWER(t.description) LIKE %?1%")
    List<Tarea> search(String term, int proyectoId);
   
  
    
}
