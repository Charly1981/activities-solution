# Spring Boot Microservice

This microservice, built with Spring Boot.

## Prerequisites

Before you begin, ensure you have:

- Java JDK 11
- Maven 

## Installation and Execution


1. **Clone the repository**

   1) Open CMD
   1) create [folder]	 
   2) cd [folder]
   3) git clone git@github.com:Charly1981/activities-solution.git
   4) cd activities-solution

2. Install microservices in following order in different CMD: 

	1) Execute and wait to finish: install-config-server.bat
	2) Execute and wait to finish: install-eureka-server.bat
	3) Execute and wait to finish: install-service-users.bat
	4) Execute and wait to finish: install-service-oauth.bat
	5) Execute and wait to finish: install-service-activities.bat
	6) Execute and wait to finish: install-sservice-zuul-server.bat
	
3. Check Instalation

	1) open browser
	2) go to http://localhost:8090/activity-management/swagger-ui/#/



