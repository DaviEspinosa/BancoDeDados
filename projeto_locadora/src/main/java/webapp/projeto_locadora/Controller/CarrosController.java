package webapp.projeto_locadora.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import webapp.projeto_locadora.Model.Carro;
import webapp.projeto_locadora.Repository.CarroRepository;
import webapp.projeto_locadora.Service.CarroService;

@Controller
public class CarrosController {

    @Autowired
    private CarroRepository carrosRepository;

    @DeleteMapping("/deletar-carro/{id}")
    public String deletarCarro(@PathVariable Integer id, RedirectAttributes attributes) {
        try {
            carrosRepository.deleteById(id);
            attributes.addFlashAttribute("mensagem", "Carro removido com sucesso!");
        } catch (Exception e) {
            attributes.addFlashAttribute("mensagem", "Erro ao remover carro!");
        }
        return "redirect:/funcionario";
    }

    @GetMapping("/pesquisarCarros")
     public String procurarModeloCarro( @RequestParam("modelo") String modelo, Model model) {
        model.addAttribute("alunos", carrosRepository.findByModeloContainingIgnoreCase(modelo));
        return "interna/interna-professor";
    }
}
