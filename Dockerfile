FROM openjdk:8-jdk-alpine
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
ARG JAR_FILE=/target/spring-petclinic-2.6.0-SNAPSHOT.jar
WORKDIR /target/*
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
RUN 'sh -c ./mvnw package'
RUN 'sh -c touch /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
