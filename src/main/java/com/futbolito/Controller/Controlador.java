package com.futbolito.cl.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Controlador {
	@RequestMapping(value="/")
	public String index() {
		return "index";
	}
}