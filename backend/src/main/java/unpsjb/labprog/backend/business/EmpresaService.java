package unpsjb.labprog.backend.business;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;
import unpsjb.labprog.backend.model.Empresa;
import org.springframework.data.domain.Sort;

@Service
public class EmpresaService {

  @Autowired
  EmpresaRepository repository;

  public List<Empresa> search(String term) {
    return repository.search("%" + term.toUpperCase() + "%");
  }

  public List<Empresa> findAll() {
    List<Empresa> result = new ArrayList<>();
    repository.findAll().forEach(e -> result.add(e));
    return result;
  }

  public Empresa findById(int id) {
    return repository.findById(id).orElse(null);
  }

  public Empresa findByCuit(String cuit) {
    return repository.findByCuit(cuit).orElse(null);
  }

  @Transactional
  public Empresa save(Empresa empresa) {
    try {
      return repository.save(empresa);
    } catch (DataIntegrityViolationException e) {
      throw new RuntimeException();
    }
  }

  @Transactional
  public Empresa create(Empresa aEmpresa) {
    try {
      return repository.save(aEmpresa);
    } catch (DataIntegrityViolationException e) {
      throw new RuntimeException();
    }
  }

  public Page<Empresa> findByPage(int page, int size, Sort sort) {
    return repository.findAllActive(PageRequest.of(page, size, sort));
  }

  public Page<Empresa> findByPageDeleted(int page, int size, Sort sort) {
    return repository.findAllDeleted(PageRequest.of(page, size, sort));
  }

  @Transactional
  public Empresa logicalDelete(int id) {
    Empresa empresa = repository.findById(id).orElse(null);
    if (empresa != null) {
      empresa.setDeletedAt(new Date());
      repository.save(empresa);
    }
    return empresa;
  }

  @Transactional
  public void reactivate(int id) {
    Empresa empresa = repository.findById(id).orElse(null);
    try{
    if (empresa != null) {
      empresa.setDeletedAt(null);
      repository.save(empresa);
    }
  }catch(DataIntegrityViolationException e){
    throw new RuntimeException();
  }
  }

  @Transactional
  public Empresa delete(Empresa empresa) {
    try {
      if (empresa != null) {
        repository.delete(empresa);
      }
      return empresa;
    } catch (DataIntegrityViolationException e) {
      throw new RuntimeException();
    }
   
  }

}
