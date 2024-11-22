# Step 1: Build the Java Application
FROM maven:3.9.5-eclipse-temurin-8 AS build

WORKDIR /app

# Copy only the necessary Maven files to leverage cache
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline

# Copy the source code
COPY src ./src

# Build the application and create the WAR file
RUN mvn clean install

# Step 2: Prepare the Tomcat environment
FROM tomcat:9-jdk8

# Copy the WAR file from the build stage
COPY --from=build /app/target/MovieDB-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/moviedb.war

# Expose the port for the application
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
