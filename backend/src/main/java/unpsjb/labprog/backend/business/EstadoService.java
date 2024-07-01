package unpsjb.labprog.backend.business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import unpsjb.labprog.backend.model.Estado;

@Service
public class EstadoService {

    @Autowired
    EstadoRepository repository;

    public Estado parteGenerado() {
        return repository.findById(1).orElse(null);
    }

    public Estado parteValido() {
        return repository.findById(2).orElse(null);
    }

    public Estado parteInvalido() {
        return repository.findById(3).orElse(null);
    }

    public Estado parteValidadoPorSupervisor() {
        return repository.findById(4).orElse(null);
    }

    public Estado parteCorregido() {
        return repository.findById(5).orElse(null);
    }

    public Estado parteRechazado() {
        return repository.findById(6).orElse(null);
    }
    public Estado parteAnulado() {
        return repository.findById(7).orElse(null);
    }
  
    public Estado logCaducado() {
        return repository.findById(8).orElse(null);
    }

   

    public Estado logGenerado() {
        return repository.findById(10).orElse(null);
    }

    public Estado logValidado() {
        return repository.findById(11).orElse(null);
    }

}
