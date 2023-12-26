@echo off
cd "SpingBoot Services\springboot-service-config-server" && mvnw.cmd clean install && java -jar target/springboot-service-config-server-0.0.1-SNAPSHOT.jar

