FROM eclipse-temurin:17-jdk-jammy

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/apigateway-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application runs on
EXPOSE 9070

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]