package webapp.projeto_locadora.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import webapp.projeto_locadora.Repository.CarroRepository;
import webapp.projeto_locadora.Service.CarroService;

@Controller
public class IndexController {

    @Autowired
    private CarroService carroService;
    
    @GetMapping("/")
    public String pageHome() {
        return "index";
    }

    // ======Login e Cadastro======
    @GetMapping("/login")
    public String pageLoginCliente() {
        return "login/login-cliente";
    }
    @GetMapping("/cadastro")
    public String pageCadastroCliente() {
        return "cadastro/cadastro-cliente";
    }
    
    //======Funcionário=============
    @GetMapping("/funcionario")
    public String pageFuncionario(Model model) {    
        carroService.listaCarros(model);
        return "interna/funcionario";
    }
    @GetMapping("/cadastroFuncionario")
    public String pageCadastroFuncionario() {
        return "cadastro/cadastro-funcionario";
    }
    @GetMapping("/loginFuncionario")    
    public String pageLoginFuncionario() {    
        return "login/login-funcionario";
    }
    
    
}
