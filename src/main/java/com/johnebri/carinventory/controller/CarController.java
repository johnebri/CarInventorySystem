package com.johnebri.carinventory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.johnebri.carinventory.data.Car;
import com.johnebri.carinventory.service.CarService;

@Controller
public class CarController {
	
	@Autowired
	private CarService carSvc;
	
	@GetMapping("/newcar")
	public String showNewCar(ModelMap model) {
		model.addAttribute("car", new Car());
		return "newcar";
	}
	
	@PostMapping("/newcar")
	public String addNewCar(ModelMap model,Car car, BindingResult result) {
		return carSvc.newCar(car);
	}

}
