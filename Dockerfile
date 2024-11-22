FROM maven:3.9.5-eclipse-temurin-8 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean install

FROM tomcat:9-jdk8

COPY --from=build /app/target/MovieDB-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/moviedb.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
