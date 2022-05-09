FROM openjdk:8-jdk-alpine
RUN apk update
RUN apk add git
RUN apk add curl
RUN apk add docker
RUN apk add openjdk8-jre
RUN apk add maven
COPY . .
RUN ls -la
RUN ./mvnw
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
