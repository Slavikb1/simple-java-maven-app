FROM maven:eclipse-temurin as builder

COPY . .

RUN mvn clean package

FROM openjdk:8-jre-alpine

COPY --from=builder /target/my-app-1.0.0.jar .

CMD java -jar /target/my-app-1.0.0.jar
