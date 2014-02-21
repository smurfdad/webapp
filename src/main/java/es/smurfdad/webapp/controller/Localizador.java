package es.smurfdad.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

}
