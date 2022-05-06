FROM java:8-jdk-alpine
VOLUME /tmp
RUN sh -c 'touch spring-petclinic-2.6.0-SNAPSHOT.jar'
RUN apt update
RUN apt install -y default-jre
RUN apt install openjdk-8-jre-headless
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
