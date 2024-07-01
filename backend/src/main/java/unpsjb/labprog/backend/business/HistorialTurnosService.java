package unpsjb.labprog.backend.business;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import unpsjb.labprog.backend.model.HistorialTurnos;

@Service
public class HistorialTurnosService {

    @Autowired
    HistorialTurnosRepository repository;


    @Transactional
    public HistorialTurnos create(HistorialTurnos historial){
        try{
            return repository.save(historial);
            }catch(DataIntegrityViolationException ex){
                throw new RuntimeException();
            }
        }




       
    
}
