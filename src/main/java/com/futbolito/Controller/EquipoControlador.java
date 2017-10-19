package com.futbolito.Controller;

import java.sql.SQLException;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.futbolito.persistencia.EquipoDAO;
import com.futbolito.to.EquipoTO;




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
	
	
	@RequestMapping(value="/crear", method=RequestMethod.POST)
	public String IngresarEquipo(@RequestParam(value="nombreEquipo", required=false,defaultValue="World")String nameEquipo, Model model
			,@RequestParam(value="numPartidos")int numPartidos
			,@RequestParam(value="numJugadores")int numJugadores 
			,@RequestParam(value="usuario")String usuario) throws SQLException {
		int idUsuario = Integer.parseInt(usuario);
		model.addAttribute("nombreE",nameEquipo);
		model.addAttribute("numerosP",numPartidos);
		model.addAttribute("numerosJ",numJugadores);
		model.addAttribute("usuario",idUsuario);
		
		EquipoDAO dao = new EquipoDAO();
		EquipoTO tic = new EquipoTO();
		tic.setNombre(nameEquipo);
		tic.setNroPartidos(numPartidos);
		tic.setNroJugadores(numJugadores);
		tic.setIdUsuario(idUsuario);
	    dao.insertarEquipo(tic);
	    
	    return "vistas/mensajeEquipo.jsp";
	}
	
	
	
		

}
