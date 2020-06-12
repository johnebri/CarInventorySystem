package com.johnebri.carinventory.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String addNewCar(ModelMap model, Car car, BindingResult result) {
		carSvc.newCar(car);
		return "redirect:/mycars?added=yes";
	}
	
	@GetMapping("/mycars")
	public String myCars(ModelMap model) {
		List<Car> cars = carSvc.getMyCars();
		model.put("mycars", cars);
		return "mycars";
	}
	
	@GetMapping("/editcar")
	public String editCar(@RequestParam int id, ModelMap model) {
		Car car = carSvc.getCar(id);
		
		model.put("car", car);
		model.put("carColour", car.getCarColour());
		return "newcar";
	}
	
	@PostMapping("/editcar")
	public String editCarAction(ModelMap model, Car car, BindingResult result) {
		carSvc.editCar(car);
		return "redirect:/mycars?edited=yes";
	}
	
	@GetMapping("/deletecar")
	public String deleteCar(@RequestParam int id, ModelMap model) {
		Car car = carSvc.getCar(id);
		model.put("car", car);
		return "confirm-delete";
	}
	
	@GetMapping("/confirmDelete")
	public String confirmDelete(@RequestParam int id) {
		carSvc.deleteCar(id);
		return "redirect:/mycars?deleted=yes";
	}
	
	
	

}
