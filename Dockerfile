FROM openjdk:8
VOLUME /tmp
ADD /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
RUN ./mvnw package
ENTRYPOINT ["java","-jar","/*.jar"]
