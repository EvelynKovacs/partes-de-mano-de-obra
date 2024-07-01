package unpsjb.labprog.backend.model;


import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Collection;

import com.fasterxml.jackson.annotation.JsonFormat;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class ParteMO {


     @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;

    @JsonFormat(pattern = "yyyy-MM-dd", shape = JsonFormat.Shape.STRING)
    private LocalDate fecha;

    @Column(nullable=false)
    private LocalTime horaDesde;

    @Column(nullable=false)
    private LocalTime horaHasta;

    @Column(nullable = true)
    private float totalHoras;

    @ManyToOne
    private Operario operario;

    @ManyToOne
    private Proyecto proyecto;

    @ManyToOne
    private Tarea tarea;

    @ManyToOne
    private Estado estado;

    @OneToMany
    @JoinColumn(name = "parte_id")
    @OrderBy("id")
     private Collection<LogValidacionParteMO> logValidacionParteMO;






    

   

   
    
}

