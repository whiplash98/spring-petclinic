FROM openjdk:8-jdk-alpine
RUN apk update
WORKDIR /spring-petclinic
ADD https://github.com/spring-projects/spring-petclinic.git /
CMD ./mvnw package
RUN sh -c '/*.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
