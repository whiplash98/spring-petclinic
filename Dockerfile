FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN !/bin/sh
RUN apt update -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
