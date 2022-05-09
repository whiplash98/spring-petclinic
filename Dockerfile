FROM openjdk:8-jdk-alpine
RUN apt update -y
RUN apt install git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git 
RUN cd spring-petclinic
RUN apt install curl -y
RUN curl -SSL https://get.docker.com/ | sh
RUN apt install default-jre
RUN apt install maven
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
