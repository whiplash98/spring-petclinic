FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN sudo apt install default-jre -Y
RUN sudo apt install openjdk-8-jre-headless
RUN sudo apt install maven
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
