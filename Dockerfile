FROM maven:3.9.6-eclipse-temurin-8-alpine as builder

COPY . .

#RUN mvn -f pom.xml clean package
RUN mvn -B clean package --file pom.xml
#FROM java:8

#COPY --from=builder multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar

#ENTRYPOINT ["java", "-cp", "multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar", "com.scalabledeveloper.multistagebuild.App"]
