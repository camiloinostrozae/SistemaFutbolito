package com.futbolito.Controller;

import java.sql.Date;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.futbolito.persistencia.TorneoDAO;
import com.futbolito.to.TorneoTO;
import com.futbolito.to.UsuarioTO;



@Controller
@SessionAttributes("user")
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
	
	@RequestMapping(value = "/crearTorneo", method=RequestMethod.POST)
	public String CrearTorneo(@ModelAttribute("user") UsuarioTO usuario, @RequestParam(value="nomTorneo") String nom,
	@RequestParam(value="finicio") Date fecha, @RequestParam(value="numParticipantes") int nump,Model model) throws SQLException {
		TorneoDAO dao = new TorneoDAO();
		TorneoTO to = new TorneoTO();
		to.setNombreTorneo(nom);
		to.setFechaInicio(fecha);
		to.setNumeroParticipantes(nump);
		to.setIdUsuario(usuario.getId());
		dao.CrearTorneo(to); 
		
		return "vistas/vistaNormal.jsp";
	}
	
	@RequestMapping(value = "/verTorneos", method=RequestMethod.GET)
	public String listarTorneos(ModelMap model,@ModelAttribute("user") UsuarioTO usuario) throws SQLException {
		
		TorneoDAO torneo = new TorneoDAO();
		model.addAttribute("listarMisTorneos",torneo.listarTorneosPropios(usuario.getId()));
		
		return "vistas/ListarMisTorneos.jsp";
		
	} 
}






