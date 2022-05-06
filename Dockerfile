FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN apt install default-jre -Y
RUN apt install openjdk-8-jre-headless
RUN apt install maven
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
