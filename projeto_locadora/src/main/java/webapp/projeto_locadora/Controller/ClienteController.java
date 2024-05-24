package webapp.projeto_locadora.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class ClienteController {
    
    

    @PostMapping("/cadastro-cliente")
    public String cadastroCliente(@RequestBody String entity) {
        //TODO: process POST request
        
        return entity;
    }
    
}
