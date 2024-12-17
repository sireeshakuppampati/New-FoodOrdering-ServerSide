# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Install Maven
RUN apt-get update && apt-get install -y maven

# Set environment variables
ENV APP_HOME=/app
WORKDIR $APP_HOME

# Copy the Maven build file and project files
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src

# Build the application
RUN mvn package -DskipTests

# Expose the application's port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "target/New-FoodOrdering-0.0.1-SNAPSHOT.jar"]
