FROM openjdk:8-jdk-alpine
RUN apk update
COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
ADD https://github.com/spring-projects/spring-petclinic.git .
RUN cd spring-petclinic
RUN ./mvnw package
RUN sh -c 'spring-petclinic-2.6.0-SNAPSHOT.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-petclinic-2.6.0-SNAPSHOT.jar"]
