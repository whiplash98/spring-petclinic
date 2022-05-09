FROM openjdk:8-jdk-alpine
RUN apt update -y
RUN apt install git -y
    git clone https://github.com/spring-projects/spring-petclinic.git 
    cd spring-petclinic
    apt install curl -y
    curl -SSL https://get.docker.com/ | sh
    apt install default-jre
    apt install maven
    ./mvnw package
COPY /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
