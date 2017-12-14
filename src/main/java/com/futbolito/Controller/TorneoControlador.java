package com.futbolito.Controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.futbolito.persistencia.TorneoDAO;



@Controller
public class TorneoControlador {
	@RequestMapping(value = "/torneo",method=RequestMethod.GET)
	public String torneo(Model model) throws SQLException {
		TorneoDAO torneo = new TorneoDAO();
		model.addAttribute("torneos",torneo.readAll());
		return "vistas/torneo.jsp";
	}
	@RequestMapping(value = "/verTorneo",method=RequestMethod.GET)
	public String verTorneo(Model model,@RequestParam(value="idTorneo")int idTorneo) throws SQLException {
		
		return "vistas/torneo.jsp";
	}
}
