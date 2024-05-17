package webapp.projeto_locadora.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class IndexController {
    
    @GetMapping("/")
    public String pageHome() {
        return "index";
    }

    // ======INTERNAS======
    @GetMapping("/login")
    public String pageLogin() {
        return "login/login-user";
    }
    
    
}
