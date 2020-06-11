package com.johnebri.carinventory.service;

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

}
