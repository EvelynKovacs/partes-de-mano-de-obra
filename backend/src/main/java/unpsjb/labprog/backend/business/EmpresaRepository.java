package unpsjb.labprog.backend.business;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import unpsjb.labprog.backend.model.Empresa;
import org.springframework.data.repository.PagingAndSortingRepository;




public interface EmpresaRepository extends CrudRepository<Empresa, Integer>,PagingAndSortingRepository<Empresa, Integer>{

    @Query("SELECT e FROM Empresa e WHERE (LOWER(e.name) LIKE LOWER(CONCAT('%', ?1, '%')) OR e.cuit LIKE CONCAT('%', ?1, '%')) AND e.deletedAt IS NULL")
List<Empresa> search(String term);


    @Query("SELECT e FROM Empresa e WHERE e.cuit = ?1")
    Optional<Empresa> findByCuit(String cuit);


    @Query("SELECT e FROM Empresa e WHERE e.deletedAt IS NULL")
    Page<Empresa> findAllActive(Pageable pageable);


    @Query("SELECT e FROM Empresa e WHERE e.deletedAt IS NOT NULL")
    Page<Empresa> findAllDeleted(Pageable pageable);

    

}