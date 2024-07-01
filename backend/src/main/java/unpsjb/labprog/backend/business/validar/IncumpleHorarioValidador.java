package unpsjb.labprog.backend.business.validar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import unpsjb.labprog.backend.business.EstadoService;
import unpsjb.labprog.backend.business.ParteMOService;
import unpsjb.labprog.backend.business.TipoTurnoService;
import unpsjb.labprog.backend.business.ValidacionParteService;
import unpsjb.labprog.backend.model.Operario;
import unpsjb.labprog.backend.model.ParteMO;
import unpsjb.labprog.backend.model.ResumenDTO;
import unpsjb.labprog.backend.model.ValidacionParteMO;

@Component
public class IncumpleHorarioValidador extends ValidadorParteMO{

       @Autowired
    private ValidacionParteService validacionParteMOService;

   

   
    @Autowired
    private EstadoService estadoService;

    @Autowired
    private TipoTurnoService tipoTurnoService;


    @Lazy
    @Autowired
    private ParteMOService parteService; 



    @Override
    public void validar(ResumenDTO resPMO, ParteMO parteMO) {
        Operario operario = parteMO.getOperario();
   
         if (tipoTurnoService.obtenerTurno(operario, resPMO.getFecha()) == null || tipoTurnoService.obtenerHorario(operario, resPMO.getFecha()) == null) {  
            return;
        } 
        if ((!(resPMO.getIngreso().isBefore(tipoTurnoService.obtenerHoraDesde(operario, resPMO.getFecha()))
                || (resPMO.getEgreso().isAfter(tipoTurnoService.obtenerHoraHasta(operario, resPMO.getFecha())))))
                && (resPMO.getIngreso().isAfter(tipoTurnoService.obtenerHoraDesde(operario, resPMO.getFecha()))
                        || (resPMO.getEgreso()
                                .isBefore(tipoTurnoService.obtenerHoraHasta(operario, resPMO.getFecha()))))) {
            parteService.invalidarParte(parteMO);
            ValidacionParteMO validacion = validacionParteMOService.incumpleHorario();
            parteService.agregarLog(estadoService.logGenerado(),parteMO,validacion);

        }
    }





    
    
}
