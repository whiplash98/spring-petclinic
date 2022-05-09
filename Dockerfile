FROM java:8-jdk-alpine
VOLUME /tmp
ADD /target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
RUN 'sh -c ./mvnw package'
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
