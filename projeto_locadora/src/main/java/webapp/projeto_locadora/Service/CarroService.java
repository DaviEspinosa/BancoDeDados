package webapp.projeto_locadora.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import jakarta.transaction.Transactional;
import webapp.projeto_locadora.Repository.CarroRepository;

@Service
public class CarroService {
    
    @Autowired
    private CarroRepository carroRepository;

    // Método para listar os carros
    public void listaCarros(Model model) {
        model.addAttribute("carro", carroRepository.findAll());
    }

    @Transactional
    public void deleteItemById(Integer id) {
        carroRepository.deleteById(id);
    }
}
