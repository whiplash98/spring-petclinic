FROM openjdk:8-jdk-alpine
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
WORKDIR /target/*
RUN 'sh -c ./mvnw package'
RUN 'sh -c touch /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
