package unpsjb.labprog.backend.presenter;

import java.time.LocalDate;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Sort;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.ParteMOService;
import unpsjb.labprog.backend.model.ParteMO;

@RestController
@RequestMapping("partes")
public class ParteMOPresenter {

    @Autowired
    ParteMOService service;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<Object> findAll() {
        return Response.ok(service.findAll());
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Object> create(@RequestBody ParteMO aParteMO) {
        try {
            return Response.ok(
                    service.save(aParteMO),
                    "Parte MO generado correctamente");
        } catch (DataIntegrityViolationException e) {
            return Response.error("El parte no puede ser creado ya que existe un parte con ese id", e.getMessage());

        }
    }

    @RequestMapping(value = "/id/{id}", method = RequestMethod.GET)
    public ResponseEntity<Object> findById(@PathVariable("id") int id) {
        ParteMO aParteOrNull = service.findById(id);
        return (aParteOrNull != null) ? Response.ok(aParteOrNull)
                : Response.notFound("Parte MO id " + id + " no encontrado");
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<Object> update(@RequestBody ParteMO parte) {
        try {
            ParteMO p = service.update(parte);
            return Response.ok(p,
                    "Parte MO alterado correctamente");

        } catch (DataIntegrityViolationException e) {

            return Response.error("Error al corregir parte MO");

        }     }

    @RequestMapping(value = {
            "/parteDadoProyectoYTarea/{fecha}/{legajoOperario}/{codigoProyecto}/{codigoTarea}" }, method = RequestMethod.GET)
    public ResponseEntity<Object> parteDadoProyectoYTarea(
            @PathVariable(value = "fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha,
            @PathVariable(value = "legajoOperario") String legajoOperario,
            @PathVariable(value = "codigoProyecto") String codigoProyecto,
            @PathVariable(value = "codigoTarea") String codigoTarea) {
        return Response.ok(service.parteDadoProyectoYTarea(fecha, legajoOperario, codigoProyecto, codigoTarea));
    }

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public ResponseEntity<Object> findByPage(
            @RequestParam(defaultValue = "0") int page,

            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false) String sortField,
            @RequestParam(required = false) Sort.Direction sortDirection) {

        if (sortField == null || sortDirection == null) {
            sortField = "fecha";
            sortDirection = Sort.Direction.DESC;
        }

        Sort sort = Sort.by(sortDirection, sortField);

        return Response.ok(service.findByPage(page, size, sort));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Object> delete(@PathVariable int id) {
        try {
            return Response.ok(
                    service.anularParte(service.findById(id)),
                    "Parte MO anulado correctamente");
        } catch (RuntimeException e) {

            return Response.error(
                    "Parte MO no se pudo eliminar");
        }
    }

    @RequestMapping(value = "/ultimos/{n}", method = RequestMethod.GET)
    public ResponseEntity<Object> ultimos(@PathVariable("n") int n) {
        return Response.ok(service.ultimos(n));
    }

    @RequestMapping(value = "/invalidos", method = RequestMethod.GET)
    public ResponseEntity<Object> partesInvalidos() {
        return Response.ok(service.partesInvalidos());
    }


    @RequestMapping(value = "/operario/{legajo}/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> resumenoper(@PathVariable("legajo") Integer legajo,
            @PathVariable("fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha) {
        return Response.ok(service.resumenOperario(legajo, fecha));
    }

    @RequestMapping(value = "/validar/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> validarPartesAlaFecha(
            @PathVariable("fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha) {
        service.validarParteAlaFecha(fecha);
        return Response.ok("validado");

    }

    @RequestMapping(value = {"/partesEstadoCorregido"}, method = RequestMethod.GET)
    public ResponseEntity<Object> partesConEstadoCorregido() {
        return Response.ok(service.partesConEstadoCorregido());
    }

    @RequestMapping(value = "/resumen/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> resumenFecha(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false) String sortField,
            @RequestParam(required = false) Sort.Direction sortDirection,
            @PathVariable("fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") Optional<String> fechaOptional) {

        if (sortField == null || sortDirection == null) {
            sortField = "legajo";
            sortDirection = Sort.Direction.ASC;
        }

        Sort sort = Sort.by(sortDirection, sortField);

        LocalDate fecha = null;
        if (fechaOptional.isPresent() && !fechaOptional.get().equals("null")) {
            fecha = LocalDate.parse(fechaOptional.get());
        }
   
        return ResponseEntity.ok(service.findByPageResumen(fecha, page, size, sort));
    }

 



    @RequestMapping(value = "/invalidos/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> getInvalidosPage(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false) String sortField,
            @RequestParam(required = false) Sort.Direction sortDirection,
            @PathVariable("fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha) {

        if (sortField == null || sortDirection == null) {
            sortField = "fecha";
            sortDirection = Sort.Direction.DESC;
        }

        Sort sort = Sort.by(sortDirection, sortField);

    
        return ResponseEntity.ok(service.getInvalidosPage(fecha, page, size, sort));
    }
    @RequestMapping(value = "/validos/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> getValidosPage(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false) String sortField,
            @RequestParam(required = false) Sort.Direction sortDirection,
            @PathVariable("fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha) {

        if (sortField == null || sortDirection == null) {
            sortField = "fecha";
            sortDirection = Sort.Direction.DESC;
        }

        Sort sort = Sort.by(sortDirection, sortField);

   
        return ResponseEntity.ok(service.getValidosPage(fecha, page, size, sort));
    }
    @RequestMapping(value = "/todos/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> getTodosPage(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false) String sortField,
            @RequestParam(required = false) Sort.Direction sortDirection,
            @PathVariable("fecha") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate fecha) {

        if (sortField == null || sortDirection == null) {
            sortField = "fecha";
            sortDirection = Sort.Direction.DESC;
        }

        Sort sort = Sort.by(sortDirection, sortField);

        return ResponseEntity.ok(service.getTodosPage(fecha, page, size, sort));
    }

    @RequestMapping(value = "/logs/{id}", method = RequestMethod.GET)
    public ResponseEntity<Object> getLogsOperarioFecha(
            @PathVariable("id") int id) {


        return ResponseEntity.ok(service.getLogsOperarioFecha(id));
    }

    @RequestMapping(path = "/validar_forzado/{legajo}/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> validarForzado(
            @PathVariable("legajo") int legajo,
            @PathVariable("fecha") LocalDate fecha

    ) {
        return Response.ok(service.forzarValidacion(legajo, fecha),"Parte MO alterado correctamente");
    }
    @RequestMapping(path = "/rechazar/{legajo}/{fecha}", method = RequestMethod.GET)
    public ResponseEntity<Object> rechazarPartes(
            @PathVariable("legajo") int legajo,
            @PathVariable("fecha") LocalDate fecha

    ) {
        return Response.ok(service.rechazarPartes(legajo, fecha),"Parte MO rechazado correctamente");
    }

   
}
