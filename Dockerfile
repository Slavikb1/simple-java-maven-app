FROM maven:eclipse-temurin as builder

COPY . .

RUN mvn clean package

FROM openjdk:8-jre-alpine

ARG VERSION=1

ENV VERSION=$VERSION

COPY --from=builder /target/my-app-1.0.$VERSION.jar .

CMD java -jar /target/my-app-1.0.$VERSION.jar
