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
	@RequestMapping(value = "/crearPartidos",method=RequestMethod.GET)
	public String crearEquipo() {
		return "vistas/crearPartidos.jsp";
	} 
	
		
		@RequestMapping(value = "/listarPartidosPropios", method=RequestMethod.GET)
		public String listarPartidosPropios(ModelMap model,@ModelAttribute("user") UsuarioTO usuario) throws SQLException {
			
			PartidoDAO partidos = new PartidoDAO();
			
			model.addAttribute("misPartidos",partidos.listarPartidosP(usuario.getId()));
			
			return "vistas/ListarMisPartidos.jsp";
			
		} 
		

		@RequestMapping(value = "/agregarResultados",method=RequestMethod.POST)
		public String agregarResultados(@RequestParam(value="id", required=false, defaultValue="World") int id,Model model,
				@RequestParam(value="idEquipo1", required=false, defaultValue="World") String idEquipo1,
				@RequestParam(value="idEquipo2", required=false, defaultValue="World") String idEquipo2
				) throws SQLException {
			model.addAttribute("Equipo1",idEquipo1);
			model.addAttribute("Equipo2",idEquipo2);
			model.addAttribute("idPartido",id);
			
			return "vistas/AgregarResultadosPartido.jsp";
		} 
		@RequestMapping(value = "/agregaResultados",method=RequestMethod.POST)
		public String agregaResultados(ModelMap model,@ModelAttribute("user") UsuarioTO usuario,
				@RequestParam(value="idepartido", required=false, defaultValue="World") int id ,
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
			
			PartidoTO to= new PartidoTO();
			PartidoDAO dao = new PartidoDAO();
			to.setIdPartido(id);
			to.setHoraInicio(horaI);
			to.setHoraFin(horaT);
			to.setEstado(estado);
			to.setGolesEquipo1(goles1);
			to.setGolesEquipo2(goles2);
			dao.AgregarResultados(to);
			
            PartidoDAO partidos = new PartidoDAO();
			
			model.addAttribute("misPartidos",partidos.listarPartidosPropios(usuario.getId()));
			
			return "vistas/ListarMisPartidos.jsp";
		} 
		@RequestMapping(value = "/detallesPartido", method=RequestMethod.GET)
		public String detallesPartido(ModelMap model,@ModelAttribute("user") UsuarioTO usuario,
				@RequestParam(value="id", required=false, defaultValue="World") int id,
				@RequestParam(value="idEquipo1", required=false, defaultValue="World") String idEquipo1,
				@RequestParam(value="idEquipo2", required=false, defaultValue="World") String idEquipo2
				) throws SQLException {
			PartidoDAO partido = new PartidoDAO();
			
			model.addAttribute("partido",partido.buscarPorIdP(id));
			
			return "vistas/detallesPartido.jsp";
			
		} 
		
}
