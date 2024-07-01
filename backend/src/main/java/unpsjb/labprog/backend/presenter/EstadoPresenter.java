package unpsjb.labprog.backend.presenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import unpsjb.labprog.backend.business.EstadoService;

@RestController
@RequestMapping("estados")
public class EstadoPresenter {
     @Autowired
  EstadoService service;

}
