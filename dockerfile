FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY target/*.jar bankapp.jar

EXPOSE 8080

CMD ["java" ,"-jar", "bankapp.jar"]