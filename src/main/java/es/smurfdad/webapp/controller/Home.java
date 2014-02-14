package es.smurfdad.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Controlador de la home del sitio.
 * Demomento solo atiende la portada
 *
 */
@Controller
public class Home {

    private final Logger logger = LoggerFactory.getLogger(Home.class);
    @RequestMapping("/")
    public String inicio(){
        logger.debug("Inicio");
        return "index";
    }    
}
