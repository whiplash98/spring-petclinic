FROM openjdk:8
VOLUME /tmp
RUN apt update
RUN apt install -y default-jre
RUN apt install openjdk-8-jre-headless
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
