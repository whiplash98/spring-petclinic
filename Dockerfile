FROM openjdk:8-jdk-alpine
RUN apk update
RUN mkdir spring-petclinic
WORKDIR /spring-petclinic
ADD https://github.com/spring-projects/spring-petclinic.git /spring-petclinic
RUN cd spring-petclinic
CMD ./mvnw package
RUN sh -c 'spring-petclinic-2.6.0-SNAPSHOT.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-petclinic-2.6.0-SNAPSHOT.jar"]
