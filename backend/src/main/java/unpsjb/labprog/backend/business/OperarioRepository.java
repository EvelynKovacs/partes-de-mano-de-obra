package unpsjb.labprog.backend.business;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import unpsjb.labprog.backend.model.Operario;

public interface OperarioRepository extends CrudRepository<Operario, Integer>,PagingAndSortingRepository<Operario, Integer>{
   
  @Query("SELECT e FROM Operario e WHERE (LOWER(e.name) LIKE LOWER(CONCAT('%', ?1, '%')) OR CAST(e.legajo AS string) LIKE CONCAT('%', ?1, '%'))")
  List<Operario> search(String term);


     @Query("SELECT e FROM Operario e WHERE e.legajo = ?1")
    Optional<Operario> findByLegajo(int legajo);

@Query("SELECT e FROM Operario e WHERE (LOWER(e.name) LIKE LOWER(CONCAT('%', ?1, '%')) OR CAST(e.legajo AS string) LIKE CONCAT('%', ?1, '%'))")
    Page<Operario> findOperarioByFiltros(@Param("filter") String filter, PageRequest pageRequest);


}