FROM openjdk:11.0.1-jre-slim-stretch
CMD ./mvnw package
EXPOSE 8080
ARG JAR=spring-petclinic-2.6.0-SNAPSHOT.jar
COPY target/$JAR /*.jar
ENTRYPOINT ["java","-jar","/*.jar"]
