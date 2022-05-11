FROM openjdk:8-jdk-alpine
VOLUME /tmp
CMD ./mvnw package
RUN cd /tmp/spring-petclinic/
#COPY targt/spring-petclinic-2.6.0-SNAPSHOT.jar /spring-petclinic-2.6.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-petclinic-2.6.0-SNAPSHOT.jar"]
