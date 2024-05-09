# Use OpenJDK 17 as the base image
FROM adoptopenjdk/openjdk17:alpine-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/my-spring-boot-app.jar /app/my-spring-boot-app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Specify the command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "my-spring-boot-app.jar"]
