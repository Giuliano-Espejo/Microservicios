package com.microservice.course;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients //habilita el uso de clientes Feign en una aplicación Spring Boot
@EnableDiscoveryClient //permite que la aplicación Spring Boot se registre con un servidor de descubrimiento de servicios, como Eureka, Consul o Zookeeper
@SpringBootApplication
public class MicroserviceCourseApplication {

	public static void main(String[] args) {
		SpringApplication.run(MicroserviceCourseApplication.class, args);
	}

}
