package com.johnebri.carinventory.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.johnebri.carinventory.data.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	Optional<User> findByEmail(String email);
}
