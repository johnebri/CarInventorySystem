package com.johnebri.carinventory.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.johnebri.carinventory.data.Car;
import com.johnebri.carinventory.repository.CarRepository;

@Service
public class CarService {
	
	@Autowired
	private CarRepository carRepo;
	
	public String newCar(Car car) {
		carRepo.save(car);
		return null;
	}
	
	public List<Car> getMyCars() {
		return carRepo.findAll(); 
	}
	
	public Optional<Car> getCar(int id) {
		return carRepo.findById(id);
	}

}
