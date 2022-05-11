FROM java:8-jdk-alpine
CMD ./mvnw package
EXPOSE 8080
ARG JAR=spring-petclinic-2.6.0-SNAPSHOT.jar
COPY targt/target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
ENTRYPOINT ["java","-jar","/*.jar"]
