package unpsjb.labprog.backend.business;


import java.time.LocalDate;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import unpsjb.labprog.backend.model.Horario;
import unpsjb.labprog.backend.model.Operario;
import unpsjb.labprog.backend.model.TipoTurno;

@Service
public class TipoTurnoService {

    @Autowired
    TipoTurnoRepository repository;


    public List<TipoTurno> findAll() {
    List<TipoTurno> result = new ArrayList<>();
    repository.findAll().forEach(e -> result.add(e));
    return result;
  }
     @Transactional
    public TipoTurno create(TipoTurno tipoTurno){
        try{
            return repository.save(tipoTurno);
            }catch(DataIntegrityViolationException ex){
                throw new RuntimeException();
            }
        }


 public List<TipoTurno> search(String term) {
    return repository.search("%" + term.toUpperCase() + "%");
  }
       


    public TipoTurno findById(int id){
        return repository.findById(id).orElse(null);
    }
 
     public TipoTurno obtenerTurno(Operario operario, LocalDate fecha){
        return repository.obtenerTurno(operario,fecha);
    } 

     public LocalTime obtenerHoraDesde(Operario operario,LocalDate fecha) {
        Horario horario = obtenerHorario( operario, fecha);
        return horario.getHoraTurnoDesde();
    }

    public LocalTime obtenerHoraHasta(Operario operario, LocalDate fecha) {
        Horario horario = obtenerHorario(operario, fecha);
        return horario.getHoraTurnoHasta();
    }
 
    public Horario obtenerHorario(Operario operario, LocalDate fecha) {
        TipoTurno tipoTurno = obtenerTurno(operario, fecha);

        return this.getTurnoActual(tipoTurno, fecha);
    } 

    private Horario getTurnoActual(TipoTurno tipoTurno, LocalDate fecha) {
        //si no tenia turno, que mande null como q no trabajaba, va a enviar null si no tenia turno y si estaba de franco mas abajo
        if(tipoTurno==null){
            return null;
        }
        
        long diasDesdeInicio = ChronoUnit.DAYS.between(tipoTurno.getFechaArranque(), fecha);

        List<Horario> horarios = tipoTurno.getHorarios();

        int cantidadHorarios = horarios.size();

        int ciclo = tipoTurno.getCantDiasTrabajo() + tipoTurno.getCantDiasFranco();

        int indice = (int) (diasDesdeInicio / ciclo) % cantidadHorarios;

        int diaEnElCiclo = (int) (diasDesdeInicio % ciclo);

        if (diaEnElCiclo >= tipoTurno.getCantDiasTrabajo()){
            return null;
        }
        
        
        return horarios.get(indice);

    }    

     
 

   

}
