package com.johnebri.carinventory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.johnebri.carinventory.data.User;
import com.johnebri.carinventory.service.CarService;

@Controller
public class UserController {
	
	@Autowired
	private CarService carSvc;
	
//	@GetMapping("/login")
//	public String userLogin(ModelMap model) {
//		model.addAttribute("user", new User());
//		System.out.println("starting 8in 8first 8login 8get");
//		return "login";
//	}
	

	
	@GetMapping("/")
	public String dashboard(ModelMap model) {
		model.put("username", getLoggedinUsername());
		int mycars = carSvc.getMyCars().size();
		model.put("noOfCars", mycars);
		return "dashboard";
	}
	
	private String getLoggedinUsername() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal instanceof UserDetails) {
			return ((UserDetails)principal).getUsername();
		}
		return principal.toString();
	}	

}
