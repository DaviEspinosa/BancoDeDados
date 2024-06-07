package webapp.projeto_locadora.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import webapp.projeto_locadora.Repository.CarroRepository;
import webapp.projeto_locadora.Service.CarroService;

@Controller
@RequestMapping("/carro")
public class CarrosController {

    @Autowired
    private CarroRepository carrosRepository;
    @Autowired
    private CarroService carroService;

  @GetMapping("/deletar-carro/{id}")
    public String deletarCarro(@PathVariable Integer id) {
        carrosRepository.deleteById(id);
        return "interna/funcionario";
    }

}