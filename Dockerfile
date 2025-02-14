#step:1 -> base image for maven
FROM maven:3.8.3-openjdk-17 AS builder

#creating work directory
WORKDIR /app

#copy source code from host to container
COPY . /app

#building the maven
RUN mvn clean install  -DskipTests=true

#step:2 -> run application with lightweight image
FROM openjdk:17-alpine

#workdir for the container
WORKDIR /app 

#copy the build file from first step
COPY --from=builder /app/target/*.jar /app/target/start-page.jar

#spring port
EXPOSE 8080

#start the application
ENTRYPOINT ["java","-jar","/app/target/start-page.jar"]
