#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean compile assembly:single




#
# Package stage
#
FROM openjdk:11
COPY --from=build /home/app/target/CiPoc-jar-with-dependencies.jar /usr/local/lib/demo.jar
EXPOSE 8080
CMD ["java","-jar","/usr/local/lib/demo.jar"]
