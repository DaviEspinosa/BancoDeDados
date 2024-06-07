package webapp.projeto_locadora.Repository;

import org.springframework.data.repository.CrudRepository;

import webapp.projeto_locadora.Model.Funcionario;
import java.util.List;


public interface FuncionarioRepository extends CrudRepository<Funcionario, Integer> {
    
    Funcionario findByEmail(String email);
    Funcionario findBySenha(String senha);

    boolean existsByEmail (String email);
    boolean existsBySenha (String senha);
}
