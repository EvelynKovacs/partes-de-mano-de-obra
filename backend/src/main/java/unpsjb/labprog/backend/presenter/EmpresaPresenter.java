package unpsjb.labprog.backend.presenter;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.http.ResponseEntity;

import unpsjb.labprog.backend.Response;
import unpsjb.labprog.backend.business.EmpresaService;
import unpsjb.labprog.backend.model.Empresa;

import org.springframework.data.domain.Sort;

@RestController
@RequestMapping("empresas")
public class EmpresaPresenter {

  @Autowired
  EmpresaService service;

  @RequestMapping(value = "/search/{term}", method = RequestMethod.GET)
  public ResponseEntity<Object> search(@PathVariable("term") String term) {
    return Response.ok(service.search(term));
  }

  @RequestMapping(method = RequestMethod.GET)
  public ResponseEntity<Object> findAll() {
    return Response.ok(service.findAll());
  }

  @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<Object> create(@RequestBody Empresa empresa) {
    try {
      Empresa empresaSaved = service.save(empresa);
      return Response.ok(empresaSaved,
          "Cliente " + empresaSaved.getName() + " con cuit " + empresaSaved.getCuit() + " cargado correctamente");
    } catch (RuntimeException e) {
      return Response.error("El cliente con cuit " + empresa.getCuit() + " ya existe");
    }
  }

  @RequestMapping(value = "/id/{id}", method = RequestMethod.GET)
  public ResponseEntity<Object> findById(@PathVariable("id") int id) {
    Empresa aEmpresaOrNull = service.findById(id);
    return (aEmpresaOrNull != null) ? Response.ok(aEmpresaOrNull)
        : Response.notFound("Empresa id " + id + " no encontrada");
  }

  @RequestMapping(method = RequestMethod.PUT)
  public ResponseEntity<Object> update(@RequestBody Empresa aEmpresa) {
    try {
      Empresa empresaSaved = service.save(aEmpresa);
      return Response.ok(empresaSaved,
          "Cliente " + empresaSaved.getName() + " con cuit " + empresaSaved.getCuit() + " actualizado correctamente");
    } catch (RuntimeException e) {
      return Response.error("El cliente con cuit " + aEmpresa.getCuit() + " ya existe");
    }
  }

  @RequestMapping(value = "/page", method = RequestMethod.GET)
  public ResponseEntity<Object> findByPage(
      @RequestParam(defaultValue = "0") int page,

      @RequestParam(defaultValue = "10") int size,
      @RequestParam(required = false) String sortField,
      @RequestParam(required = false) Sort.Direction sortDirection) {

    if (sortField == null || sortDirection == null) {
      sortField = "name";
      sortDirection = Sort.Direction.ASC;
    }

    Sort sort = Sort.by(sortDirection, sortField);

    return Response.ok(service.findByPage(page, size, sort));
  }

  @RequestMapping(value = "/pageDel", method = RequestMethod.GET)
  public ResponseEntity<Object> findByPageDeleted(
      @RequestParam(defaultValue = "0") int page,

      @RequestParam(defaultValue = "10") int size,
      @RequestParam(required = false) String sortField,
      @RequestParam(required = false) Sort.Direction sortDirection) {

    if (sortField == null || sortDirection == null) {
      sortField = "name";
      sortDirection = Sort.Direction.ASC;
    }

    Sort sort = Sort.by(sortDirection, sortField);

    return Response.ok(service.findByPageDeleted(page, size, sort));
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<Object> logicalDelete(@PathVariable("id") int id) {
    service.logicalDelete(id);
    return Response.ok("Empresa " + id + " borrada logicamente");
  }

  @RequestMapping(value = "/{cuit}", method = RequestMethod.GET)
  public ResponseEntity<Object> findByCuit(@PathVariable("cuit") String cuit) {
    Empresa clieOrNull = service.findByCuit(cuit);
    return (clieOrNull != null)
        ? Response.ok(clieOrNull,
            "Cliente " + clieOrNull.getName() + " con cuit " + clieOrNull.getCuit() + " cargado correctamente")
        : Response.notFound("Cliente no existe");
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.POST)
  public ResponseEntity<Object> reactivate(@PathVariable("id") int id) {
    try {
      Date alreadyActive = service.findById(id).getDeletedAt();
      if (alreadyActive == null) {
        return Response.error("La empresa " + id + " ya está activa");
      }

      service.reactivate(id);
      return Response.ok("Empresa " + id + " reactivada exitosamente");
    } catch (RuntimeException e) {
      return Response.error("Error durante la reactivacion");
    }

  }

  @RequestMapping(value = "/id/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<Object> delete(@PathVariable int id) {

    try {

      return Response.ok(service.delete(service.findById(id)), "Empresa " + id + " eliminada correctamente");

    } catch (RuntimeException e) {
      return Response.error(
          "La Empresa que intenta eliminar esta siendo utilizada por un proyecto");
    }
  }

}
