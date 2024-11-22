FROM tomcat:9-jdk8

COPY /target/MovieDB-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/moviedb.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
