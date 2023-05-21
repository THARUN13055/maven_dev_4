FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY ./target/*.jar /*.jar
CMD [ "java","-jar","*.jar" ]
