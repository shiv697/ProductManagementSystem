package com.productapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories
@EntityScan
@SpringBootApplication

public class ProductManagementSystemApplication {

	public static void main(String[] args) {
		System.out.println("this is product-management-System");
		SpringApplication.run(ProductManagementSystemApplication.class, args);
	}

}

