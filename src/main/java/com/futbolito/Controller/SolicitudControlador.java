package com.futbolito.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.futbolito.to.UsuarioTO;

@Controller
@SessionAttributes("user")
public class SolicitudControlador {

	@RequestMapping(value="/obtener.htm", method=RequestMethod.GET)
    public String handleRequest(ModelMap model,@ModelAttribute("user") UsuarioTO usuario){
        String datoNombre = "Nombre Estudiante:"+usuario.getNombre();
        model.addAttribute("datoNombre", datoNombre);
        System.out.println(datoNombre);
        return "vistas/solicitud.jsp";
    }

	
}
