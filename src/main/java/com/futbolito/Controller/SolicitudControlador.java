package com.futbolito.Controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.futbolito.persistencia.EquipoDAO;
import com.futbolito.to.UsuarioTO;

@Controller
@SessionAttributes("user")
public class SolicitudControlador {

	@RequestMapping(value="/solicitud", method=RequestMethod.POST)
    public String handleRequest(ModelMap model,@ModelAttribute("user") UsuarioTO usuario){
        model.addAttribute("nombre", usuario.getNombre());
        return "vistas/solicitud.jsp";
    }
	
	
	/* @RequestMapping(value = "/solicitud")
	public String solicitud(Model model) throws SQLException {
		
		return "vistas/solicitud.jsp";
	}
	@RequestMapping(value = "/CrearSolicitud", method=RequestMethod.POST)
	public String CrearSolicitud(@RequestParam(value="nombreEquipo",
	required=false, defaultValue="World") String nombreEquipo,Model model) throws SQLException {
		
		EquipoDAO equipo = new EquipoDAO();
		model.addAttribute("nombreEquipo",nombreEquipo);
		return "vistas/solicitud.jsp";
	}*/ 
}
