package com.johnebri.carinventory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.johnebri.carinventory.data.Car;
import com.johnebri.carinventory.repository.CarRepository;

@Service
public class CarService {
	
	@Autowired
	private CarRepository carRepo;
	
	public Car newCar(Car car) {
		return carRepo.save(car);
	}
	
	public List<Car> getMyCars() {
		return carRepo.findAll(); 
	}
	
	public Car getCar(int id) {
		return carRepo.getCarById(id);
	}

	public Car editCar(Car car ) {
		return carRepo.save(car);
	}
	
	public void deleteCar(int id) {
		carRepo.deleteById(id);
	}

}
