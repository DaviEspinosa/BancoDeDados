package webapp.projeto_locadora.Repository;

import org.springframework.data.repository.CrudRepository;

import webapp.projeto_locadora.Model.Cliente;

public interface ClienteRepository extends CrudRepository<Cliente, Integer> {

    Cliente findByEmail(String email);
    Cliente findBySenha(String senha);
    Cliente findByCpf(String cpf);

    boolean existsByEmail(String email);
    boolean existsBySenha(String senha);
    boolean existsByCpf(String cpf);
    

}
