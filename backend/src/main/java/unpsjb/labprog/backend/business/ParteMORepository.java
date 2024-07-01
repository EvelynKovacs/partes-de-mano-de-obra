package unpsjb.labprog.backend.business;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.NonNull;

import unpsjb.labprog.backend.model.LogValidacionParteMO;
import unpsjb.labprog.backend.model.Operario;
import unpsjb.labprog.backend.model.ParteMO;
import unpsjb.labprog.backend.model.Proyecto;
import unpsjb.labprog.backend.model.ResumenDTO;
import unpsjb.labprog.backend.model.Tarea;

import java.util.List;

public interface ParteMORepository
        extends CrudRepository<ParteMO, Integer>, PagingAndSortingRepository<ParteMO, Integer> {

    @Override
    @NonNull
    @Query("SELECT e FROM ParteMO e ORDER BY id ASC")
    List<ParteMO> findAll();

    @Query("SELECT e FROM ParteMO e ORDER BY id DESC LIMIT ?1")
    ArrayList<ParteMO> ultimos(int n);

    @Query("SELECT pmo.fecha as fecha, pmo.operario.legajo as legajo, pmo.operario.name as nombre, "
            + "MIN(pmo.horaDesde) as ingreso, MAX(pmo.horaHasta) as egreso, "
            + "cast(max(pmo.horaHasta) - min(pmo.horaDesde) as time) as horas, "
            + "cast(sum(pmo.horaHasta - pmo.horaDesde) as time) as horasPartes, "
            + "ANY_VALUE(pmo.estado.nombre) as estado "
            + "FROM ParteMO pmo "
            + "WHERE pmo.fecha = COALESCE(:fecha, pmo.fecha) "
            + "GROUP BY pmo.operario.legajo, pmo.operario.name, pmo.fecha "
            + "ORDER BY pmo.fecha DESC")
    Page<ResumenDTO> resumenFecha(@Param("fecha") LocalDate fecha, Pageable pageable);

    @Query("SELECT p FROM ParteMO p where p.operario.legajo = :legajo AND p.fecha=:fecha ORDER BY p.horaDesde ASC")
    List<ParteMO> resumenOperario(Integer legajo, @Param("fecha") LocalDate fecha);

    @Query("SELECT max(pmo.fecha) as fecha,pmo.operario.legajo as legajo, pmo.operario.name as nombre,MIN(pmo.horaDesde) as ingreso, MAX(pmo.horaHasta) as egreso,cast(max(pmo.horaHasta) - min(pmo.horaDesde) as time) horas,cast(sum(pmo.horaHasta - pmo.horaDesde) as time) as horasPartes FROM ParteMO pmo WHERE (pmo.fecha <= :fecha AND lower(pmo.estado.nombre) IN ('generado','corregido') ) GROUP BY pmo.operario.legajo, pmo.operario.name")
    Collection<ResumenDTO> validarPartesAlaFecha(@Param("fecha") LocalDate fecha);

    @Query("SELECT pmo.fecha as fecha, pmo.operario.legajo as legajo, pmo.operario.name as nombre, "
            + "MIN(pmo.horaDesde) as ingreso, MAX(pmo.horaHasta) as egreso, "
            + "cast(max(pmo.horaHasta) - min(pmo.horaDesde) as time) as horas, "
            + "cast(sum(pmo.horaHasta - pmo.horaDesde) as time) as horasPartes, "
            + "ANY_VALUE(pmo.estado.nombre) as estado "
            + "FROM ParteMO pmo "
            + "WHERE (pmo.fecha <= :fecha AND lower(pmo.estado.nombre) IN ('inválido','corregido','rechazado') )"
            + "GROUP BY pmo.operario.legajo, pmo.operario.name, pmo.fecha "
            + "ORDER BY pmo.fecha DESC")
    Page<ResumenDTO> getInvalidos(@Param("fecha") LocalDate fecha, Pageable pageable);

    @Query("SELECT pmo.fecha as fecha, pmo.operario.legajo as legajo, pmo.operario.name as nombre, "
            + "MIN(pmo.horaDesde) as ingreso, MAX(pmo.horaHasta) as egreso, "
            + "cast(max(pmo.horaHasta) - min(pmo.horaDesde) as time) as horas, "
            + "cast(sum(pmo.horaHasta - pmo.horaDesde) as time) as horasPartes, "
            + "ANY_VALUE(pmo.estado.nombre) as estado "
            + "FROM ParteMO pmo "
            + "WHERE (pmo.fecha <= :fecha AND lower(pmo.estado.nombre) IN ('válido','validado') )"
            + "GROUP BY pmo.operario.legajo, pmo.operario.name, pmo.fecha "
            + "ORDER BY pmo.fecha DESC")
    Page<ResumenDTO> getValidos(@Param("fecha") LocalDate fecha, Pageable pageable);

    @Query("SELECT pmo.fecha as fecha, pmo.operario.legajo as legajo, pmo.operario.name as nombre, "
            + "MIN(pmo.horaDesde) as ingreso, MAX(pmo.horaHasta) as egreso, "
            + "cast(max(pmo.horaHasta) - min(pmo.horaDesde) as time) as horas, "
            + "cast(sum(pmo.horaHasta - pmo.horaDesde) as time) as horasPartes, "
            + "ANY_VALUE(pmo.estado.nombre) as estado "
            + "FROM ParteMO pmo "
            + "WHERE pmo.fecha <= :fecha AND lower(pmo.estado.nombre) != 'anulado'"
            + "GROUP BY pmo.operario.legajo, pmo.operario.name, pmo.fecha "
            + "ORDER BY pmo.fecha DESC")
    Page<ResumenDTO> getTodos(@Param("fecha") LocalDate fecha, Pageable pageable);


    @Query("SELECT pmo.logValidacionParteMO "
            + "FROM ParteMO pmo "
            + "JOIN pmo.logValidacionParteMO log "
            + "WHERE pmo.id =:id "
            + "ORDER BY log.fecha DESC, log.hora DESC")
    List<LogValidacionParteMO> getLogsOperarioFecha(@Param("id") int id);

    @Query("SELECT parte FROM ParteMO parte WHERE lower(parte.estado.nombre)='inválido' ORDER BY parte.id ASC")
    List<ParteMO> partesInvalidos();

    @Query(value = "SELECT pmo " +
            "FROM ParteMO pmo " +
            "WHERE (pmo.estado.nombre = 'corregido')")
    List<ParteMO> partesConEstadoCorregido();

    @Query(value = "SELECT pmo " +
            "FROM ParteMO pmo " +
            "WHERE (pmo.operario = :operario) AND (pmo.fecha = :fecha) AND (pmo.proyecto = :proyecto) AND (pmo.tarea = :tarea)")
    ParteMO parteDadoProyectoYTarea(@Param("fecha") LocalDate fecha, @Param("operario") Operario operario,
            @Param("proyecto") Proyecto proyecto, @Param("tarea") Tarea tarea);
}