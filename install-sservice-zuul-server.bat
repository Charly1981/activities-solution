@echo off
cd "SpingBoot Services\springboot-service-zuul-server" && mvnw.cmd clean install && java -jar target/springboot-service-zuul-server-0.0.1-SNAPSHOT.jar

