FROM openjdk:8-jdk-alpine
VOLUME /tmp
CMD ./mvnw package
RUN cd spring-petclinic
#COPY targt/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
