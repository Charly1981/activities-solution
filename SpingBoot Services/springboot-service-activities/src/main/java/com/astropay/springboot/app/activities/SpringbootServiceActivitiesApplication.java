package com.astropay.springboot.app.activities;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
@EntityScan({"com.astropay.springboot.app.activities.models.entity"})
public class SpringbootServiceActivitiesApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootServiceActivitiesApplication.class, args);
	}

}
