package com.smunsey.portfolio;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewUserController {

	@RequestMapping(value = "addUser", method = RequestMethod.POST)
	public String newUserHandler(Model model){
		     
		model.addAttribute("message", "Login Successful. Hello Shaun!");
		return "home";
	}
	
}
