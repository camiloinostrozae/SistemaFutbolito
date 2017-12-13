package com.futbolito.Controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.futbolito.persistencia.PartidoDAO;
import com.futbolito.to.UsuarioTO;

@Controller
@SessionAttributes("user")
public class PartidoControlador {
	
		
		@RequestMapping(value = "/listarPartidosPropios", method=RequestMethod.GET)
		public String listarPartidosPropios(ModelMap model,@ModelAttribute("user") UsuarioTO usuario) throws SQLException {
			
			PartidoDAO partidos = new PartidoDAO();
			
			model.addAttribute("misPartidos",partidos.listarPartidosPropios(usuario.getId()));
			
			return "vistas/ListarMisPartidos.jsp";
			
		} 

}
