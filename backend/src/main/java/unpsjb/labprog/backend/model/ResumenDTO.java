 package unpsjb.labprog.backend.model;

import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;

public interface ResumenDTO {
    LocalDate getFecha();
    int getLegajo();
    String getNombre();
    LocalTime getIngreso();
    LocalTime getEgreso();
    Time getHoras();
    Time getHorasPartes();
    String getEstado();

}
