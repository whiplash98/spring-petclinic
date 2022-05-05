RUN apt update -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
RUN apt install default-jre -Y
RUN apt install openjdk-8-jre-headless -Y
FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
