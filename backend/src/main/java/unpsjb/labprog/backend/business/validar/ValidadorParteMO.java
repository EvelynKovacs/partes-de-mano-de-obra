
package unpsjb.labprog.backend.business.validar;

import unpsjb.labprog.backend.model.ParteMO;
import unpsjb.labprog.backend.model.ResumenDTO;

public abstract class ValidadorParteMO {

    public abstract void validar(ResumenDTO resPMO, ParteMO parteMO);

}


