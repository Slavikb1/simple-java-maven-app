FROM maven:eclipse-temurin as builder

COPY . .

RUN mvn clean package

FROM openjdk:8-jre-alpine

COPY --from=builder /target/my-app-1.0-SNAPSHOT.jar /target/my-app-1.0-SNAPSHOT.jar

CMD CMD java -jar /target/my-app-1.0-SNAPSHOT.jar

#ENTRYPOINT ["java", "-cp", "multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar", "com.scalabledeveloper.multistagebuild.App"]
