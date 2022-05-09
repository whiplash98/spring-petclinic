FROM openjdk:8-jdk-alpine
RUN apk update -y
RUN apk add git -y
RUN apk add curl -y
RUN curl -SSL https://add.docker.com/ | sh
RUN apk add default-jre
RUN apk add maven
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
