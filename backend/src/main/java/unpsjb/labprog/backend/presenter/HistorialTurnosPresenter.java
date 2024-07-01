package unpsjb.labprog.backend.presenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.HistorialTurnosService;
import unpsjb.labprog.backend.model.HistorialTurnos;

@RestController
@RequestMapping("historialTurnos")
public class HistorialTurnosPresenter {

    @Autowired
    HistorialTurnosService service;



  @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<Object> create(@RequestBody HistorialTurnos historial) {

    try {
      HistorialTurnos historialSaved= service.create(historial);
      return Response.ok(historialSaved,
          "Historial Turno guardado correctamente" );
    } catch (DataIntegrityViolationException e) {
      return Response.error(
          "error al guardar el Historial turno");
    }
  }

  @RequestMapping(method = RequestMethod.PUT)
  public ResponseEntity<Object> update(@RequestBody HistorialTurnos historial) {

    try {
      HistorialTurnos historialSaved= service.create(historial);
      return Response.ok(historialSaved,
          "Historial Turno guardado correctamente" );
    } catch (DataIntegrityViolationException e) {
      return Response.error(
          "error al guardar el Historial turno");
    }
  }

  
    
}
