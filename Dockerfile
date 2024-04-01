FROM maven:eclipse-temurin as builder

COPY . .

#RUN mvn -f pom.xml clean package
RUN mvn -f --file pom.xml clean package
#FROM java:8

#COPY --from=builder multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar

#ENTRYPOINT ["java", "-cp", "multistagebuild-1.0-SNAPSHOT-jar-with-dependencies.jar", "com.scalabledeveloper.multistagebuild.App"]
