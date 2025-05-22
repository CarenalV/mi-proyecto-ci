FROM eclipse-temurin:17-jre
COPY target/myapp-1.0.jar /app/myapp.jar
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
