FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.jar app.jar
EXPOSE 9191
ENTRYPOINT ["java","-jar","hotel-lakewood.jar"]
