package unpsjb.labprog.backend.presenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.OperarioService;

import unpsjb.labprog.backend.model.Operario;

@RestController
@RequestMapping("operarios")
public class OperarioPresenter {

  @Autowired
  OperarioService service;

  @RequestMapping(method = RequestMethod.GET)
  public ResponseEntity<Object> findAll() {
    return Response.ok(service.findAll());
  }

  @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<Object> create(@RequestBody Operario operario) {

    try {
      Operario operarioSaved = service.save(operario);
      return Response.ok(operarioSaved,
          "Operario/a " + operario.getLegajo() + " " + operario.getName() + " ingresado/a correctamente");
    } catch (DataIntegrityViolationException e) {
      return Response.error(
          "El operio/a con legajo " + operario.getLegajo() + " ya existe");
    }
    catch(SuperposicionException s){
      return Response.error("Error de superposición de turnos: Ya existe un turno para una de las fechas seleccionadas"
      );
    }
    catch(TurnoNoExistenteException tne){
      return Response.error("Error: El turno especificado no existe para la fecha seleccionada" );
    }
  }

  @RequestMapping(value = "/search/{term}", method = RequestMethod.GET)
  public ResponseEntity<Object> search(@PathVariable("term") String term) {
    return Response.ok(service.search(term));
  }


  @RequestMapping(value = "/id/{id}", method = RequestMethod.GET)
  public ResponseEntity<Object> findById(@PathVariable("id") int id) {
    Operario aOperarioOrNull = service.findById(id);
    return (aOperarioOrNull != null) ? Response.ok(aOperarioOrNull)
        : Response.notFound("Operario id " + id + " no encontrado");
  }

  @RequestMapping(value = "/legajo/{legajo}", method = RequestMethod.GET)
  public ResponseEntity<Object> findByLegajo(@PathVariable("legajo") int legajo) {
    Operario aOperarioOrNull = service.findByLegajo(legajo);
    return (aOperarioOrNull != null) ? Response.ok(aOperarioOrNull)
        : Response.notFound("Operario legajo " + legajo + " no encontrado");
  }

  @RequestMapping(method = RequestMethod.PUT)
  public ResponseEntity<Object> update(@RequestBody Operario operario) {
    try {
      Operario operarioSaved = service.save(operario);
      return Response.ok(operarioSaved,
          "Operario/a " + operario.getLegajo() + " " + operario.getName() + " ingresado/a correctamente");
    } catch (DataIntegrityViolationException e) {
      return Response.error(
          "El operio/a con legajo " + operario.getLegajo() + " ya existe");
    }catch(SuperposicionException s){
      return Response.error("Error de superposición de turnos: Ya existe un turno para una de las fechas seleccionadas");
    }  catch(TurnoNoExistenteException tne){
      return Response.error("Error: El turno especificado no existe para la fecha seleccionada" );
    } 
    
  }




  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<Object> delete(@PathVariable int id) {
    try{
    return Response.ok(
        service.delete(service.findById(id)),
        "Operario eliminado correctamente");
  
}catch(RuntimeException e){

return Response.error(
        " El operario no se puede eliminar porque existen partes del mismo");
}
  }

  @RequestMapping(value = "/pageOperario", method = RequestMethod.GET)
    public ResponseEntity<Object> findByPageOperario(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false, defaultValue = "") String textoBusqueda) {
        return Response.ok(service.findByPageOper(page, size, textoBusqueda));
    }

}
