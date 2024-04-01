FROM maven:eclipse-temurin as builder

COPY . .

RUN mvn clean package

FROM openjdk:8-jre-alpine

COPY --from=builder /target/my-app-1.0.${{github.run_number}}.jar /target/my-app-1.0.${{github.run_number}}.jar

CMD java -jar /target/my-app-1.0.${{github.run_number}}.jar

#ENTRYPOINT ["java", "-cp", "multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar", "com.scalabledeveloper.multistagebuild.App"]
