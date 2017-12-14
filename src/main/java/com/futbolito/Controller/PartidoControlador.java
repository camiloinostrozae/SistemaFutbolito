package com.futbolito.Controller;

import java.sql.SQLException;
import java.sql.Time;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.futbolito.persistencia.EquipoDAO;
import com.futbolito.persistencia.PartidoDAO;
import com.futbolito.persistencia.UsuarioDAO;
import com.futbolito.to.EquipoTO;
import com.futbolito.to.PartidoTO;
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
		

		@RequestMapping(value = "/agregarResultados",method=RequestMethod.POST)
		public String agregarResultados(@RequestParam(value="id", required=false, defaultValue="World") int id,Model model,
				@RequestParam(value="idEquipo1", required=false, defaultValue="World") int idEquipo1,
				@RequestParam(value="idEquipo2", required=false, defaultValue="World") int idEquipo2
				) throws SQLException {
			
			EquipoDAO dao = new EquipoDAO();
			EquipoTO to1 = new EquipoTO();
			EquipoTO to2 = new EquipoTO();
			to1 = dao.buscarPorId(idEquipo1);
			to2 = dao.buscarPorId(idEquipo2);
			System.out.println(to1.getNombre()+ "   "+ to2.getNombre());
			model.addAttribute("Equipo1",to1);
			model.addAttribute("Equipo2",to2);
			model.addAttribute("idPartido",id);
			
			return "vistas/AgregarResultadosPartido.jsp";
		} 
		@RequestMapping(value = "/agregaResultados",method=RequestMethod.POST)
		public String agregaResultados(@RequestParam(value="idepartido", required=false, defaultValue="World") int id ,Model model,
				@RequestParam(value="horaI", required=false, defaultValue="World") Time horaI,
				@RequestParam(value="horaT", required=false, defaultValue="World") Time horaT,
				@RequestParam(value="Estado", required=false, defaultValue="World") String estado,
				@RequestParam(value="goles1", required=false, defaultValue="World") int goles1,
				@RequestParam(value="goles2", required=false, defaultValue="World") int goles2
				) throws SQLException {
			
			System.out.println(id);
			System.out.println(horaI+ "   "+horaT);
			System.out.println(estado);
			System.out.println(goles1+ "   "+goles2);
			
			
			return "vistas/ListarMisPartidos.jsp";
		} 
}
