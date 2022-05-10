FROM openjdk:8-jdk-alpine
VOLUME /tmp
CMD apt update -y
CMD git clone https://github.com/spring-projects/spring-petclinic.git
CMD cd spring-petclinic
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
