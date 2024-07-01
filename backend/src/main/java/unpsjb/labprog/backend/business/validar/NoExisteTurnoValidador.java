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

@Component
public class NoExisteTurnoValidador extends ValidadorParteMO {


     @Autowired
    private TipoTurnoService tipoTurnoService;

    @Autowired
    private ValidacionParteService validacionParteMOService;

    @Autowired
    private EstadoService estadoService;

    @Lazy
    @Autowired
    private ParteMOService service;

    @Override
    public void validar(ResumenDTO resPMO, ParteMO parteMO) {
        Operario operario = parteMO.getOperario();
       
        if (tipoTurnoService.obtenerTurno(operario, resPMO.getFecha()) == null ) {

            service.invalidarParte(parteMO);
            service.agregarLog( estadoService.logGenerado(), parteMO, validacionParteMOService.turnoInexistente());
        }
    }

    
}
