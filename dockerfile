FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY . .

EXPOSE 8080

CMD ["java" ,"-jar", "bankapp.jar"]