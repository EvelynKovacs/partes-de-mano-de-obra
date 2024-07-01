package unpsjb.labprog.backend.business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import unpsjb.labprog.backend.model.ValidacionParteMO;

@Service
public class ValidacionParteService {

    @Autowired
    ValidacionParteRepository repository;

    public ValidacionParteMO incumpleHorario(){
        return repository.findById(1).orElse(null);
    }

    public ValidacionParteMO superposicionHoraria(){
        return repository.findById(2).orElse(null);
    }

    public ValidacionParteMO huecoHorario(){
        return repository.findById(3).orElse(null);
    }

    public ValidacionParteMO fueraDeTurno(){
        return repository.findById(4).orElse(null);
    }
    public ValidacionParteMO validacionExitosa(){
        return repository.findById(5).orElse(null);
    }
    public ValidacionParteMO validacionForzada(){
        return repository.findById(6).orElse(null);
    }
    public ValidacionParteMO rechazado(){
        return repository.findById(7).orElse(null);
    }
    public ValidacionParteMO franco(){
        return repository.findById(8).orElse(null);
    }
    public ValidacionParteMO turnoInexistente(){
        return repository.findById(9).orElse(null);
    }




















 

    
}
