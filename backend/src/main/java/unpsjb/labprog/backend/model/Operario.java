package unpsjb.labprog.backend.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Operario {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(unique = true, nullable = false)
    private int legajo;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private CategoriaOperario category;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "operario_id")
    @OrderBy("fechaDesde DESC, fechaHasta DESC")
    private List<HistorialTurnos> historialTurnos;

}
