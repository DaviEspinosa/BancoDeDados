package webapp.projeto_locadora.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import webapp.projeto_locadora.Model.Carro;

public interface CarroRepository extends JpaRepository<Carro, Integer>{
    
    List<Carro> findByModeloContainingIgnoreCase(String modelo);

}
