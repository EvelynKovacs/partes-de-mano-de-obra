package unpsjb.labprog.backend.business;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import unpsjb.labprog.backend.model.Horario;

@Service
public class HorarioService {

     @Autowired
    HorarioRepository repository;

    public Horario findByOrden(int orden) {
    return repository.findByOrden(orden).orElse(null);
  }

   public List<Horario> findAll() {
    List<Horario> result = new ArrayList<>();
    repository.findAll().forEach(e -> result.add(e));
    return result;
  }

    
}
