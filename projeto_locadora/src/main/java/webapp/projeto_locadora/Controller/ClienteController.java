package webapp.projeto_locadora.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import webapp.projeto_locadora.Model.Cliente;
import webapp.projeto_locadora.Repository.ClienteRepository;

@Controller
public class ClienteController {

    @Autowired
    private ClienteRepository clienteRepository;

    @PostMapping("cadastrar-cliente")
    public ModelAndView cadastroCliente(Cliente cliente, RedirectAttributes attributes) {
    
        // Inicialmente, define a redireção para a página de cadastro
        ModelAndView mv = new ModelAndView("redirect:/cadastro");
    
        boolean verificaEmail = clienteRepository.existsByEmail(cliente.getEmail());
        boolean verificaCpf = clienteRepository.existsByCpf(cliente.getCpf());
    
        try {
            if (cliente.getNome().isEmpty() || cliente.getSobrenome().isEmpty() || cliente.getSenha().isEmpty() || cliente.getEmail().isEmpty()
                    || cliente.getCpf().isEmpty() || cliente.getCelular().isEmpty() || cliente.getCidade().isEmpty() || cliente.getEstado().isEmpty()
                    || cliente.getEndereco().isEmpty()) {
    
                attributes.addFlashAttribute("mensagem", "Todos os campos são obrigatórios");
            } else {
                if (verificaEmail && verificaCpf) {
                    attributes.addFlashAttribute("mensagem", "Usuário já existente");
                } else {
                    clienteRepository.save(cliente);
                    // Se o cadastro for bem-sucedido, redireciona para a página de login
                    mv.setViewName("redirect:/login");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
            System.err.println("Erro ao cadastrar cliente: " + e.getMessage());
            // Adiciona uma mensagem de erro geral em caso de exceção
            attributes.addFlashAttribute("mensagem", "Ocorreu um erro ao processar o cadastro. Tente novamente.");
        }
        
        return mv;
    }


    @PostMapping("logar-cliente")
    public ModelAndView logarCliente(Cliente cliente, RedirectAttributes attributes) {
    
        // Inicialmente, define a redireção para a página de cadastro
        ModelAndView mv = new ModelAndView("redirect:login");
    
        boolean buscaEmail = clienteRepository.existsByEmail(cliente.getEmail());
        boolean buscaSenha = clienteRepository.existsBySenha(cliente.getSenha());
    
        try {
            if (cliente.getSenha().isEmpty() || cliente.getEmail().isEmpty()) {
                attributes.addFlashAttribute("mensagem", "Todos os campos são obrigatórios");
            } 
            else{
                if (buscaEmail || buscaSenha) {
                    mv.setViewName("redirect:/");
                } else {

                    attributes.addFlashAttribute("mensagem", "Usuário não encontrado, porfavor cadastre-se!");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
            System.err.println("Erro ao Logar cliente: " + e.getMessage());
            attributes.addFlashAttribute("mensagem", "Ocorreu um erro ao processar o login. Tente novamente.");
        }
        
        return mv;
    }
    
}
