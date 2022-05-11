FROM openjdk:8-jdk-alpine
CMD apt update -y
CMD git clone https://github.com/spring-projects/spring-petclinic.git
CMD cd spring-petclinic
CMD target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
