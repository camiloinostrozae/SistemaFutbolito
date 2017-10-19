package com.futbolito.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class Controlador {
	@RequestMapping(value = "/")
	public String index() {
		return "index";
	}

	@RequestMapping(value= "/salute", method= RequestMethod.GET)
	public String greeting(@RequestParam(value="user", required=false, defaultValue="World") String user,@RequestParam(value="pass", required=false, defaultValue="World") String pass, Model model) {
	
	
		model.addAttribute("user",user);
		model.addAttribute("pass", pass);
	return "greeting.jsp";
	}
}