FROM openjdk:8-jdk-alpine
RUN apk update
ADD https://github.com/spring-projects/spring-petclinic.git /spring-petclinic
CMD ./mvnw package
COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
