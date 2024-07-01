package unpsjb.labprog.backend.business;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import unpsjb.labprog.backend.model.Operario;
import unpsjb.labprog.backend.model.TipoTurno;

public interface TipoTurnoRepository  extends CrudRepository<TipoTurno, Integer>{

    @Query("SELECT ht.tipoTurno "
    + "FROM Operario op JOIN op.historialTurnos ht "
    + "WHERE op =:operario AND (:fecha BETWEEN ht.fechaDesde AND COALESCE(ht.fechaHasta,:fecha ))"
    )
    TipoTurno obtenerTurno(@Param("operario") Operario operario,@Param("fecha") LocalDate fecha);

     @Query("SELECT t FROM TipoTurno t WHERE (LOWER(t.nombre) LIKE LOWER(CONCAT('%', ?1, '%')) )")
        List<TipoTurno> search(String term);

    
}
