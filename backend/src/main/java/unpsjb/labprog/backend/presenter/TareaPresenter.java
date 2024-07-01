package unpsjb.labprog.backend.presenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.TareaService;
import unpsjb.labprog.backend.model.Tarea;

@RestController
@RequestMapping("tareas")
public class TareaPresenter {

    @Autowired
    TareaService service;



    @RequestMapping(value = "/proyecto/{proyectoId}/search/{term}", method = RequestMethod.GET)
    public ResponseEntity<Object> search(@PathVariable("term") String term,@PathVariable("proyectoId") int proyectoId) {
      return Response.ok(service.search(term,proyectoId));
    }

    @RequestMapping(method=RequestMethod.GET)
    public ResponseEntity<Object> findAll() {
        return Response.ok(service.findAll());
    }

     @RequestMapping( method = RequestMethod.POST)
    public ResponseEntity<Object> create(@RequestBody Tarea tarea) {
      try {
          Tarea tareaSaved=service.save(tarea);     
           return Response.ok(tareaSaved);
      } catch (RuntimeException e) {
        return Response.error("error al cargar la tarea"
        );
      }
    } 
      @RequestMapping(value="/id/{id}", method=RequestMethod.GET)
      public ResponseEntity<Object> findById(@PathVariable("id") int id) {
          Tarea aTareaOrNull = service.findById(id);
          return (aTareaOrNull != null)?
          Response.ok(aTareaOrNull):
          Response.notFound("Tarea id " + id + " no encontrada");
      }

      @RequestMapping(value="/code/{code}", method=RequestMethod.GET)
      public ResponseEntity<Object> findByCode(@PathVariable("code") String code) {
          Tarea aTareaOrNull = service.findByCode(code);
          return (aTareaOrNull != null)?
          Response.ok(aTareaOrNull):
          Response.notFound("Tarea código " + code + " no encontrada");
      }
  
      @RequestMapping(method=RequestMethod.PUT)
      public ResponseEntity<Object> update(@RequestBody Tarea aTarea) {
        try {
            Tarea tareaSaved=service.save(aTarea);     
             return Response.ok(tareaSaved);
        } catch (RuntimeException e) {
          return Response.error("error al cargar la tarea"
          );
        }
         
      } 
  
      @RequestMapping(value="/page", method=RequestMethod.GET)
      public ResponseEntity<Object> findByPage(
          @RequestParam(defaultValue = "0") int page,
      
          @RequestParam(defaultValue= "10") int size,
          @RequestParam(required = false) String sortField,
          @RequestParam(required = false) Sort.Direction sortDirection) {
      
          if (sortField == null || sortDirection == null) {
              sortField = "code";
              sortDirection = Sort.Direction.ASC;
          }
      
          Sort sort = Sort.by(sortDirection, sortField);
      
          return Response.ok(service.findByPage(page, size, sort));
      }

      @RequestMapping(value = "/{code}", method = RequestMethod.DELETE)
  public ResponseEntity<Object> delete(@PathVariable String code) {
      return Response.ok(
        service.deleteByCode(service.findByCode(code)),
        "Tarea eliminada correctamente"
      );
    } 
  }

      

  
    

