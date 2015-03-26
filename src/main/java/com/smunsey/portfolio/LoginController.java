package com.smunsey.portfolio;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginHandler(HttpServletRequest request, Model model){
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean authorized = authorize(username, password);
		
		//if authorized return to welcome
		//else return to login with error
		
		if(authorized){
			model.addAttribute("message", username);
			return "welcome";
		}else{
			model.addAttribute("message", "Username or password not recognised");
			return "home";
		}
	}
	
	public boolean authorize(String user, String pass){
		boolean authorized = false;
		
		return authorized;
	}
}
