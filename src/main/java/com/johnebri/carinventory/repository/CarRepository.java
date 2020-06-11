package com.johnebri.carinventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.johnebri.carinventory.data.Car;

public interface CarRepository extends JpaRepository<Car, Integer> {

}
