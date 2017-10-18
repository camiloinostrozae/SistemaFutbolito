package com.futbolito.Controller;

import java.sql.SQLException;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.futbolito.persistencia.EquipoDAO;
import com.futbolito.persistencia.UsuarioDAO;
import com.futbolito.to.UsuarioTO;



@Controller
public class EquipoControlador {
	@RequestMapping(value = "/crearequipo",method=RequestMethod.GET)
	public String crearEquipo() {
		return "vistas/CrearEquipo.jsp";
	} 
	
	@RequestMapping(value = "/listarequipos")
	public String listarEquipos(Model model) throws SQLException {
		
		EquipoDAO equipo = new EquipoDAO();
		model.addAttribute("listaEquipos",equipo.readAll());
		return "vistas/listarEquipos.jsp";
	} 
		

}
