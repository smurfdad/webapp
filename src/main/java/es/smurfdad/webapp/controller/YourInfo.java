package es.smurfdad.webapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/yourinfo")
public class YourInfo {
    private final Logger logger = LoggerFactory.getLogger(YourInfo.class);

    @RequestMapping(method=RequestMethod.GET)
    public String inicio(HttpServletRequest request, Model model){
        model.addAttribute("ip", request.getRemoteAddr());
        model.addAttribute("pais", request.getLocale().getDisplayCountry(request.getLocale()));
        model.addAttribute("idioma", request.getLocale().getDisplayLanguage(request.getLocale())); 
        return "yourinfo";
    }
}
