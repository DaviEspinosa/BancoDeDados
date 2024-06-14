package webapp.projeto_locadora.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import webapp.projeto_locadora.Model.Funcionario;
import webapp.projeto_locadora.Model.Funcionario;
import webapp.projeto_locadora.Repository.FuncionarioRepository;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FuncionariosController {

    ModelAndView mv = new ModelAndView();

    @Autowired
    private FuncionarioRepository funcionarioRepository;

    @PostMapping("cadastrar-funcionario")
    public ModelAndView cadastroFuncionario(Funcionario funcionario, RedirectAttributes attributes) {
    
        // Inicialmente, define a redireção para a página de cadastro
        ModelAndView mv = new ModelAndView("redirect:/cadastroFuncionario");
    
        boolean verificaEmail = funcionarioRepository.existsByEmail(funcionario.getEmail());
        boolean verificaCpf = funcionarioRepository.existsByCpf(funcionario.getCpf());
    
        try {
            if (funcionario.getNome().isEmpty() || funcionario.getSobrenome().isEmpty() || funcionario.getSenha().isEmpty() || funcionario.getEmail().isEmpty()
                    || funcionario.getCpf().isEmpty() || funcionario.getCelular().isEmpty()) {
    
                attributes.addFlashAttribute("mensagem", "Todos os campos são obrigatórios");
            } else {
                if (verificaEmail && verificaCpf) {
                    attributes.addFlashAttribute("mensagem", "Usuário já existente");
                } else {
                    funcionarioRepository.save(funcionario);
                    // Se o cadastro for bem-sucedido, redireciona para a página de login
                    mv.setViewName("redirect:/login");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
            System.err.println("Erro ao cadastrar funcionario: " + e.getMessage());
            // Adiciona uma mensagem de erro geral em caso de exceção
            attributes.addFlashAttribute("mensagem", "Ocorreu um erro ao processar o cadastro. Tente novamente.");
        }
        
        return mv;
    }


     @PostMapping("acesso-funcionario")
     public ModelAndView acessoFuncionario(Funcionario funcionario, RedirectAttributes attributes) {
         
        boolean verificaEmail =  funcionarioRepository.existsByEmail(funcionario.getEmail());
        boolean verificaSenha = funcionarioRepository.existsBySenha(funcionario.getSenha());

        try {
            if (funcionario.getSenha().isEmpty() || funcionario.getEmail().isEmpty()) {
                attributes.addFlashAttribute("textoVazio", "Preencha Todos os Campos, Por favor...");
                mv.setViewName("redirect:loginFuncionario");
            }
            else{
                if (verificaEmail && verificaSenha) {
                    mv.setViewName("redirect:funcionario");
                }
                else{
                    attributes.addFlashAttribute("funcionarioInvalido", "Funcionário não Encontrado!!!");
                    mv.setViewName("redirect:loginFuncionario");
                }
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
         
        return mv;
     }
     
}
