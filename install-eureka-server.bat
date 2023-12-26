@echo off
cd "SpingBoot Services\springboot-service-eureka-server" && mvnw.cmd clean install && java -jar target/springboot-service-eureka-server-0.0.1-SNAPSHOT.jar

