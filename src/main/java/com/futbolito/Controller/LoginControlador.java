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
public class LoginControlador {
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String ValidarUsuario(@RequestParam(value="usuario", required=false,defaultValue="World")String name, Model model
			,@RequestParam(value="password")String password) throws SQLException {
		model.addAttribute("usuario",name);
		model.addAttribute("password",password);
		/*
		UsuarioDAO dao = new UsuarioDAO();
		UsuarioTO tic = new UsuarioTO();
		tic.setNombre(name);
		tic.setContraseña(password);
	    dao.login(tic);
		System.out.println(dao.login(tic));
		//return "vistas/home.jsp";
		 * 
		 */
	    return "vistas/home.jsp";
	} 
}
