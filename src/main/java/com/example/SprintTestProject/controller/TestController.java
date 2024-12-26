package com.example.SprintTestProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.SprintTestProject.entity.Users;
import com.example.SprintTestProject.service.userSevice;


@Controller
public class TestController {

//	@GetMapping("/")
//	public String getAll() {
//		return "index.jsp";
//	}

	@Autowired
	userSevice us;
	
	@GetMapping("/")
	public String homePage(Model model) {
		List<Users> usersList = us.getAllUsers();

		model.addAttribute("users", usersList);
		// model.addAttribute("userName","John Doe");
		// model.addAttribute("role","Dev");
		// model.addAttribute("address","Rastar Pashe");
		// Users user = new Users();
		// user.setAddress("ks");
		// user.setEmail("siufbvsbfcsd@sdfh.com");
		// user.setGender("M");
		// user.setName("naam");
		// user.setPassword("123445");
		// us.add(user);
		return "index.jsp";
	}
}
