# Stage 1: Build
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests && cp target/*SNAPSHOT.jar target/app.jar
RUN ls -l /app/target

# Stage 2: Run
FROM eclipse-temurin:21-jdk-jammy
WORKDIR /app
COPY --from=build /app/target/bankapp-0.0.1-SNAPSHOT.jar bankapp.jar

EXPOSE 8080
CMD ["java", "-jar", "bankapp.jar"]