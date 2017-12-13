package com.futbolito.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TorneoControlador {
	@RequestMapping(value = "/torneo",method=RequestMethod.GET)
	public String torneo() {
		return "vistas/torneo.jsp";
	}
}
