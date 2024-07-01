package unpsjb.labprog.backend.model;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Getter
@Setter
@NoArgsConstructor
public class TipoTurno {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String tipo;
    
    private String nombre;
    
    private LocalDate fechaArranque;
    
    @Column
    private int cantDiasTrabajo;

    @Column 
    private int cantDiasFranco;
 
    @OrderBy("orden ASC")
    @OneToMany(cascade = CascadeType.ALL)
    private List<Horario> horarios;


    

     
   
    
}
