package webapp.projeto_locadora.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import webapp.projeto_locadora.Model.Carro;

public interface CarroRepository extends JpaRepository<Carro, Integer>{
    
    
}
