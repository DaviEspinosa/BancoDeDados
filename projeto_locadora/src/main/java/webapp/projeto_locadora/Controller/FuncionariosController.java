package webapp.projeto_locadora.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import webapp.projeto_locadora.Model.Funcionario;
import webapp.projeto_locadora.Repository.FuncionarioRepository;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FuncionariosController {

    ModelAndView mv = new ModelAndView();

    @Autowired
    private FuncionarioRepository funcionarioRepository;

     @PostMapping("acesso-funcionario")
     public String acessoFuncionario(Funcionario funcionario, RedirectAttributes attributes) {
         
        boolean verificaEmail =  funcionarioRepository.existsByEmail(funcionario.getEmail());
        boolean verificaSenha = funcionarioRepository.existsBySenha(funcionario.getSenha());

        try {
            if (!verificaSenha == funcionario.getSenha().isEmpty() || verificaEmail == funcionario.getEmail().isEmpty()) {
                attributes.addFlashAttribute("textoVazio", "Preencha Todos os Campos, Por favor...");
            }
            else{
                if (verificaEmail && verificaSenha) {
                    mv.setViewName("redirect:funcionario");
                }
                else{
                    attributes.addFlashAttribute("usuarioInvalido", "Usuário não Encontrado!!!");
                }
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
         
         return "";
     }
     
}
