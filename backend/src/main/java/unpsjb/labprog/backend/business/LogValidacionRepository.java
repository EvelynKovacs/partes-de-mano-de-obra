package unpsjb.labprog.backend.business;



import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import unpsjb.labprog.backend.model.LogValidacionParteMO;

public interface LogValidacionRepository extends CrudRepository<LogValidacionParteMO, Integer> ,PagingAndSortingRepository<LogValidacionParteMO, Integer>{


    
}
