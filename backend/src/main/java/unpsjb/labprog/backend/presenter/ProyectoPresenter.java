package unpsjb.labprog.backend.presenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.ProyectoService;
import unpsjb.labprog.backend.model.Proyecto;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.io.PrintWriter;
import java.io.StringWriter;

@RestController
@RequestMapping("proyectos")

public class ProyectoPresenter {

    @Autowired
    ProyectoService service;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<Object> findAll() {
        return Response.ok(service.findAll());
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Object> create(@RequestBody Proyecto aProyecto) {

        try {
            Proyecto proyect = service.save(aProyecto);
            return Response.ok(proyect,
                    "Proyecto " + proyect.getCode() + " para " + proyect.getEmpresa().getName()
                            + " ingresado correctamente");

        } catch (DataIntegrityViolationException e) {
            String errorMessage = e.getMessage();

            Pattern taskCodePattern = Pattern.compile("constraint \\[uk_lgh44fo1n8tgbj72xwm1ysfcr]");
            Pattern projectCodePattern = Pattern.compile("constraint \\[uk_gxy0t6wcak6t6peax7r9m208u]");

            Matcher taskCodeMatcher = taskCodePattern.matcher(errorMessage);
            Matcher projectCodeMatcher = projectCodePattern.matcher(errorMessage);

            if (taskCodeMatcher.find()) {
                String codigoTareaRepetida = obtenerCodigoTarea(e);

                return Response.error(
                        "El código de tarea " + codigoTareaRepetida + " ya existe");
            } else if (projectCodeMatcher.find()) {
                return Response.error(
                        "El proyecto con código " + aProyecto.getCode() + " ya existe");
            } else {
                return Response.error("Error de integridad de datos: " + errorMessage);
            }
        }
    }

    @RequestMapping(value = "/id/{id}", method = RequestMethod.GET)
    public ResponseEntity<Object> findById(@PathVariable("id") int id) {
        Proyecto aProyectoOrNull = service.findById(id);
        return (aProyectoOrNull != null) ? Response.ok(aProyectoOrNull)
                : Response.notFound("Proyecto id " + id + " no encontrado");
    }

    @RequestMapping(value = "/code/{code}", method = RequestMethod.GET)
    public ResponseEntity<Object> findByCode(@PathVariable("code") String code) {
        Proyecto aProyectoOrNull = service.findByCode(code);
        return (aProyectoOrNull != null) ? Response.ok(aProyectoOrNull)
                : Response.notFound("Proyecto código " + code + " no encontrado");
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<Object> update(@RequestBody Proyecto aProyecto) {

        try {
            Proyecto proyect = service.save(aProyecto);
            return Response.ok(proyect,
                    "Proyecto " + proyect.getCode() + " para " + proyect.getEmpresa().getName()
                            + " ingresado correctamente");

        } catch (DataIntegrityViolationException e) {
            String errorMessage = e.getMessage();

            Pattern taskCodePattern = Pattern.compile("constraint \\[uk_lgh44fo1n8tgbj72xwm1ysfcr]");
            Pattern projectCodePattern = Pattern.compile("constraint \\[uk_gxy0t6wcak6t6peax7r9m208u]");

            Matcher taskCodeMatcher = taskCodePattern.matcher(errorMessage);
            Matcher projectCodeMatcher = projectCodePattern.matcher(errorMessage);

            if (taskCodeMatcher.find()) {
                String codigoTareaRepetida = obtenerCodigoTarea(e);

                return Response.error(
                        "El código de tarea " + codigoTareaRepetida + " ya existe");
            } else if (projectCodeMatcher.find()) {
                return Response.error(
                        "El proyecto con código " + aProyecto.getCode() + " ya existe");
            } else {
                return Response.error("Error de integridad de datos: " + errorMessage);
            }
        }
    }

    private String obtenerCodigoTarea(DataIntegrityViolationException ex) {
        StringWriter errors = new StringWriter();
        ex.printStackTrace(new PrintWriter(errors));
        String trace = errors.toString();

        String regex = "Key \\(code\\)=\\((\\d+)\\)";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(trace);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public ResponseEntity<Object> findByPage(
            @RequestParam(defaultValue = "0") int page,

            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false) String sortField,
            @RequestParam(required = false) Sort.Direction sortDirection) {

        if (sortField == null || sortDirection == null) {
            sortField = "empresa.name";
            sortDirection = Sort.Direction.ASC;
        }

        Sort sort = Sort.by(sortDirection, sortField);

        return Response.ok(service.findByPage(page, size, sort));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Object> delete(@PathVariable int id) {
        try {
            return Response.ok(
                    service.delete(service.findById(id)),
                    "Proyecto eliminado correctamente");
        } catch (RuntimeException e) {

            return Response.error(
                    "El proyecto no se pudo eliminar");
        }
    }
    @RequestMapping(value = "/search/{term}", method = RequestMethod.GET)
    public ResponseEntity<Object> search(@PathVariable("term") String term) {
      return Response.ok(service.search(term));
    }
  

    @RequestMapping(value = "/{proyectoId}/searchTarea/{term}", method = RequestMethod.GET)
    public ResponseEntity<Object> searchTareas(@PathVariable("term") String term,@PathVariable("proyectoId") int proyectoId) {
      return Response.ok(service.searchTareas(term,proyectoId));
    }

     /** Lista de tareas para un proyecto dado */
     @RequestMapping(value = "/{id}/tareas", method = RequestMethod.GET)
     public ResponseEntity<Object> getTareas(
     @PathVariable("id") Integer id
     ){
         Proyecto proyecto = service.findById(id);
         return (proyecto != null)?
         Response.ok(proyecto.getTareas(), "Tareas del proyecto recuperadas correctamente"):
         Response.notFound("Proyecto no existe");
     }

}
