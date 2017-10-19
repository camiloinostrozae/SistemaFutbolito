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
public class Controlador {
	@RequestMapping(value = "/" , method=RequestMethod.GET)
	public String index() {
		return "index";
	} 
	
	@RequestMapping(value = "/registrarse" , method=RequestMethod.GET)
	public String registrar() {
		return "vistas/registro.html";
	} 
	
	@RequestMapping(value="/ingresar", method=RequestMethod.POST)
	public String IngresarUsuario(@RequestParam(value="nombre", required=false,defaultValue="World")String name, Model model
			,@RequestParam(value="apellido")String apellido
			,@RequestParam(value="email")String email
			,@RequestParam(value="telefono")String telefono
			,@RequestParam(value="contraseña")String contraseña
			,@RequestParam(value="rol")int rol) throws SQLException {
		model.addAttribute("nombre",name);
		model.addAttribute("apellido",apellido);
		model.addAttribute("email",email);
		model.addAttribute("telefono",telefono);
		model.addAttribute("contraseña",contraseña);
		model.addAttribute("idrol",rol);
		
		UsuarioDAO dao = new UsuarioDAO();
		UsuarioTO tic = new UsuarioTO();
		tic.setNombre(name);
		tic.setApellido(apellido);
		tic.setEmail(email);
		tic.setTelefono(telefono);
		tic.setContraseña(contraseña);
		tic.setIdRol(rol);
	    dao.insertar(tic);
	    
	    return "vistas/mensaje.jsp";

	}


	@RequestMapping(value= "/salute", method= RequestMethod.GET)
	public String greeting(@RequestParam(value="user", required=false, defaultValue="World") String user,@RequestParam(value="pass", required=false, defaultValue="World") String pass, Model model) {
	
	
		model.addAttribute("user",user);
		model.addAttribute("pass", pass);
	return "greeting.jsp";
	}

}

