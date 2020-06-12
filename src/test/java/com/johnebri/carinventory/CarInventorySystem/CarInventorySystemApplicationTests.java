package com.johnebri.carinventory.CarInventorySystem;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.Date;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import com.johnebri.carinventory.data.Car;
import com.johnebri.carinventory.repository.CarRepository;
import com.johnebri.carinventory.service.CarService;

@RunWith(SpringRunner.class)
@SpringBootTest
class CarInventorySystemApplicationTests {
	
	
	@Autowired
	private CarService carSvc;

	@MockBean
	private CarRepository carRepo;

	@Test
	public void getCarsTest() {
		when(carRepo.findAll()).thenReturn(Stream
				.of(new Car(1,"CarName", null, null, null), new Car(1,"CarName", null, null, null)).collect(Collectors.toList()));
		assertEquals(2, carSvc.getMyCars().size());
	}
	
	@Test
	public void newCarTest() {
		Car car = new Car(1,"CarName", "Car Model", "Car Colour", null);
		when(carRepo.save(car)).thenReturn(car);
		assertEquals(car, carSvc.newCar(car));
	}
	
	@Test
	public void deleteCarTest() {
		int id = 1;
		carSvc.deleteCar(id);
		verify(carRepo,times(1)).deleteById(id);
	}
	
	@Test
	public void editCarTest() {
		Car car = new Car(1,"CarName", "Car Model", "Car Colour", null);
		when(carRepo.save(car)).thenReturn(car);
		assertEquals(car, carSvc.editCar(car));
	}
	
	
	@Test
	public void getCarTest() {
		int id = 1;
		Car car = new Car();
		when(carRepo.getCarById(id)).thenReturn(car);
		assertEquals(car, carSvc.getCar(id));
	}
	
}
