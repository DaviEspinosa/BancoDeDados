package webapp.projeto_locadora.WebConfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.HiddenHttpMethodFilter;

@Configuration
public class WebConfig {

    @Bean
    public HiddenHttpMethodFilter hiddenHttpMethodFilter() {
        return new HiddenHttpMethodFilter();
    }
}

// Por padrão, os formulários HTML só suportam os métodos HTTP GET e POST. No
// entanto, em muitas aplicações web, você precisa suportar outros métodos HTTP
// como PUT, DELETE e PATCH, especialmente em aplicações RESTful. Como os
// navegadores não suportam esses métodos em formulários, é comum usar um campo
// oculto (_method) no formulário para simular esses métodos.