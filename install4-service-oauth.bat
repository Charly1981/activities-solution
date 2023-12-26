@echo off
cd "SpingBoot Services\springboot-service-oauth" && mvnw.cmd clean install && java -jar target/springboot-service-oauth-0.0.1-SNAPSHOT.jar

