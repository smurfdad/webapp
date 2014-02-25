package es.smurfdad.util.web;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Filtro que redirecciona con HTTP 301 la uris que indiquemos
 * como parametros en el web.xml
 * En un futuro formara parte de un artefacto de utilides.
 */
public class Host301RedirectFilter implements Filter {
    private HashMap<String, String> cHosts = new HashMap<>();

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest pServletRequest, ServletResponse pServletResponse, FilterChain pFilterChain) throws IOException,
            ServletException {
        HttpServletResponse response = (HttpServletResponse) pServletResponse;
        HttpServletRequest  request  = (HttpServletRequest) pServletRequest;
        
        //Filtro
        if (cHosts.containsKey(request.getServerName())){
            response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
            response.setHeader("Location", cHosts.get(request.getServerName()));
        }else{
            pFilterChain.doFilter(pServletRequest, pServletResponse);
        }
    }

    @Override
    public void init(FilterConfig pConfig) throws ServletException {
        @SuppressWarnings("unchecked")
        Enumeration<String> paramNames = pConfig.getInitParameterNames();
        while(paramNames.hasMoreElements()){
            String paramName = paramNames.nextElement();
            cHosts.put(paramName, pConfig.getInitParameter(paramName));
        }
    }
}
