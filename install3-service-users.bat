@echo off
cd "SpingBoot Services\springboot-service-users" && mvnw.cmd clean install && java -jar target/springboot-service-users-0.0.1-SNAPSHOT.jar

