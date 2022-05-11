FROM openjdk:8-jdk-alpine
RUN apk update -y
ADD https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
RUN pwd
RUN ls
COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
