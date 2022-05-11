FROM openjdk:8-jdk-alpine
RUN apk update
RUN mkdir spring-petclinic
ADD https://github.com/spring-projects/spring-petclinic.git /spring-petclinic
RUN cd spring-petclinic
RUN ls
RUN cd spring-petclinic
RUN ./mvnw package
ADD target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
