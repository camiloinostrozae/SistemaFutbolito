package com.futbolito.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JugadorControlador {

	
	@RequestMapping(value = "/agregarJugador",method=RequestMethod.POST)
	public String agregarJugador() {
		return "vistas/agregarJugador.jsp";
	} 
}
