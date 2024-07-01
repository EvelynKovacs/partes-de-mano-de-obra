package unpsjb.labprog.backend.business;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import unpsjb.labprog.backend.model.Horario;


public interface HorarioRepository extends CrudRepository<Horario, Integer>{

    @Query("SELECT e FROM Horario e WHERE e.orden = ?1")
    Optional<Horario> findByOrden(int orden);
    
}
