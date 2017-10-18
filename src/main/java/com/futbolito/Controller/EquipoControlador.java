package com.futbolito.Controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.futbolito.persistencia.UsuarioDAO;
import com.futbolito.to.UsuarioTO;



@Controller
public class EquipoControlador {
	@RequestMapping(value = "/crearequipo",method=RequestMethod.POST)
	public String crearEquipo() {
		return "vistas/CrearEquipo.html";
	} 
		

}
