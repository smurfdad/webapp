package es.smurfdad.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/localizador")
public class Localizador {
    private final Logger logger = LoggerFactory.getLogger(Localizador.class);

    /**
     * Metodo que atiende la entrada y carga la jsp
     * @return
     */
    @RequestMapping(method=RequestMethod.GET)
    public  String inicio(){
        logger.debug("Inicio");
        return "localizador/jsp/mapa";
    }

    /**
     * Con este metodo devolvemos un codigo 301 para que
     * los navegadores apunten a la url nueva.
     * @return
     */
    @RequestMapping(value="/inicio.do", method=RequestMethod.GET)
    public ModelAndView inicioAntiguo(){
        logger.debug("Inicio Antiguo");
        
        RedirectView rv = new RedirectView("/localizador");
        rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
        ModelAndView mv = new ModelAndView(rv);
        return mv;        
    }
    
}
