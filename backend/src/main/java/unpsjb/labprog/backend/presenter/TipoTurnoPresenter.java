package unpsjb.labprog.backend.presenter;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.OperarioService;
import unpsjb.labprog.backend.business.TipoTurnoService;
import unpsjb.labprog.backend.model.Horario;
import unpsjb.labprog.backend.model.TipoTurno;


@RestController
@RequestMapping("tipoTurnos")
public class TipoTurnoPresenter {


    @Autowired
    TipoTurnoService service;

    @Autowired
    OperarioService operarioService;



    @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<Object> create(@RequestBody TipoTurno tipoTurno) {

    try {
      TipoTurno turnoSaved= service.create(tipoTurno);
      return Response.ok(turnoSaved,
          "Turno  guardado correctamente" );
    } catch (DataIntegrityViolationException e) {
      return Response.error(
          "error al guardar el turno");
    }
  }

  @RequestMapping(value = "/id/{id}", method = RequestMethod.GET)
  public ResponseEntity<Object> findById(@PathVariable("id") int id) {
  TipoTurno aTipoTurnoOrNull = service.findById(id);
    return (aTipoTurnoOrNull != null) ? Response.ok(aTipoTurnoOrNull)
        : Response.notFound("Tipo turno id " + id + " no encontrado");
  }

  @RequestMapping(value = {"/obtenerHorario/{legajoOperario}/{fecha}" }, method = RequestMethod.GET)
    public ResponseEntity<Object> parteDadoProyectoYTarea(
      @PathVariable(value = "legajoOperario") int legajoOperario,
      @PathVariable(value = "fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha)
       {
        Horario aHorarioOrNull =service.obtenerHorario(operarioService.findByLegajo(legajoOperario), fecha);
        if(aHorarioOrNull != null){
          return Response.ok(aHorarioOrNull);
        }else{
          return Response.error("El operario no se encuetra trabajando");
        }
    }
  
    @RequestMapping(value = "/obtenerTurno/{legajoOperario}/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> obtenerTipoTurno(  @PathVariable(value = "legajoOperario") int legajoOperario,
    @PathVariable(value = "fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha){
    TipoTurno aTipoTurnoOrNull = service.obtenerTurno(operarioService.findByLegajo(legajoOperario), fecha);
      return (aTipoTurnoOrNull != null) ? Response.ok(aTipoTurnoOrNull)
          : Response.notFound("El operario "+ operarioService.findByLegajo(legajoOperario).getName()+" no tiene turno para esta fecha");
    }

    @RequestMapping(value = "/search/{term}", method = RequestMethod.GET)
    public ResponseEntity<Object> search(@PathVariable("term") String term) {
      return Response.ok(service.search(term));
    }

 
    
}
