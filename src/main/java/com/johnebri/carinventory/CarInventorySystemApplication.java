package com.johnebri.carinventory;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class CarInventorySystemApplication extends SpringBootServletInitializer {
	
	

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		// return super.configure(builder);
		return application.sources(CarInventorySystemApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(CarInventorySystemApplication.class, args);
	}

}
