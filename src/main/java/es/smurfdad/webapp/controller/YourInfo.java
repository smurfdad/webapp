package es.smurfdad.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/yourinfo")
public class YourInfo {
    private final Logger logger = LoggerFactory.getLogger(YourInfo.class);

    @RequestMapping(method=RequestMethod.GET)
    public String inicio(){
        logger.debug("Inicio");
        return "yourinfo/jsp/index";
    }
}
