# Base image
FROM openjdk:17
# Working directory inside the container
WORKDIR /app
# Copy the application JAR file into the container
COPY target/course-management-api-0.0.1-SNAPSHOT.jar app.jar
# Expose the port(s) required by application
EXPOSE 8080
# Set the command to run application
CMD ["java", "-jar", "app.jar"]