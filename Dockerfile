FROM openjdk:8
VOLUME /tmp
RUN ./mvnw package
ADD /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
