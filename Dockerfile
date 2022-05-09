FROM openjdk:8-jdk-alpine
RUN apk update
RUN apk add git
RUN apk add curl
RUN apk add --update docker openr
RUN rc-update add docker boot
RUN apk add openjdk8-jre
RUN apk add maven
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
