FROM maven:3.8.3-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17-ea-28-jdk-slim
COPY --from=build /target/empData-0.0.1-SNAPSHOT.jar hotel-lakewood.jar
EXPOSE 9191
ENTRYPOINT ["java","-jar","hotel-lakewood.jar"]
