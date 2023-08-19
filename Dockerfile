# Use an official OpenJDK base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container at the working directory
COPY target/*.jar app.jar
# Adjust the JAR name accordingly

# Expose the port that the Spring application will listen on
EXPOSE 8080

# Define the command to run your Spring application
CMD ["java", "-jar", "app.jar"]
