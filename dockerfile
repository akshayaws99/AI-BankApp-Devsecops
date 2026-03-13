FROM openjdk:21-jdk-slim

WORKDIR /app

COPY target/bankapp.jar /app/bankapp.jar

EXPOSE 8080

CMD ["java" ,"-jar", "bankapp.jar"]