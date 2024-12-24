package com.example.SprintTestProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

//	@GetMapping("/")
//	public String getAll() {
//		return "index.jsp";
//	}
	
	@GetMapping("/")
	public String homePage(Model model) {
		model.addAttribute("userName","John Doe");
		model.addAttribute("role","Dev");
		model.addAttribute("address","Rastar Pashe");
		return "index.jsp";
	}
}
