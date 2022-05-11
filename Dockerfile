FROM openjdk:8-jdk-alpine
ADD target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
CMD apt update -y
CMD git clone https://github.com/spring-projects/spring-petclinic.git
CMD cd spring-petclinic
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
