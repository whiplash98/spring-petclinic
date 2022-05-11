FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN cd /tmp/
RUN ls
COPY targt/target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
