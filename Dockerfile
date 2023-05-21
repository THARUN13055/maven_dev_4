FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY ./target/spring-boot.jar .
CMD ["java","-jar","spring-boot.jar"]
EXPOSE 8080