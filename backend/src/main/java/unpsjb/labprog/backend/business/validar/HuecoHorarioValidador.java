package unpsjb.labprog.backend.business.validar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import unpsjb.labprog.backend.business.EstadoService;

import unpsjb.labprog.backend.business.ParteMOService;
import unpsjb.labprog.backend.business.TipoTurnoService;
import unpsjb.labprog.backend.business.ValidacionParteService;

import unpsjb.labprog.backend.model.ParteMO;
import unpsjb.labprog.backend.model.ResumenDTO;
import unpsjb.labprog.backend.model.ValidacionParteMO;

@Component
public class HuecoHorarioValidador extends ValidadorParteMO{

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
   
         if (tipoTurnoService.obtenerTurno(parteMO.getOperario(), resPMO.getFecha()) == null || tipoTurnoService.obtenerHorario(parteMO.getOperario(), resPMO.getFecha()) == null) {  
            return;
        }
        if (resPMO.getHoras().after(resPMO.getHorasPartes())) {
            parteService.invalidarParte(parteMO);    
            ValidacionParteMO validacion = validacionParteMOService.huecoHorario();
            parteService.agregarLog(estadoService.logGenerado(),parteMO,validacion);
        }
    }

   
}
    

