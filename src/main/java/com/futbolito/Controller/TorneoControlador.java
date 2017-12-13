package com.futbolito.Controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.futbolito.persistencia.TorneoDAO;



@Controller
public class TorneoControlador {
	@RequestMapping(value = "/torneo",method=RequestMethod.GET)
	public String torneo(Model model) throws SQLException {
		System.out.println("entre");
		TorneoDAO torneo = new TorneoDAO();
		System.out.println("pase el dao");
		model.addAttribute("torneos",torneo.readAll());
		System.out.println("pase el model y retorno la vista");
		return "vistas/torneo.jsp";
	}
}
