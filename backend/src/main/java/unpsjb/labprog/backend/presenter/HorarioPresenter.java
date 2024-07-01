package unpsjb.labprog.backend.presenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.HorarioService;
import unpsjb.labprog.backend.model.Horario;

@RestController
@RequestMapping("horarios")
public class HorarioPresenter {
    @Autowired
    HorarioService service;


   @RequestMapping(value = "/{orden}", method = RequestMethod.GET)
  public ResponseEntity<Object> findByOrden(@PathVariable("orden") int orden) {
    Horario  horarioOrNull = service.findByOrden(orden);
    return (horarioOrNull != null)
        ? Response.ok(horarioOrNull,
            "Horario con orden " + horarioOrNull.getOrden() + " encontrado " )
        : Response.notFound("Ese horario no existe");
  }
}
