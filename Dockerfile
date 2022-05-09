FROM openjdk:8-jdk-alpine
RUN apk update
RUN apk add docker
RUN ls -la
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
