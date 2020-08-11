package com.spring.demo.sidebyside;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackages = "com.spring.demo.sidebyside.repository")
@SpringBootApplication
public class ToDoApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(ToDoApplication.class, args);

	}

}