FROM java:8-jdk-alpine
RUN apk update
ADD https://github.com/spring-projects/spring-petclinic.git .
CMD ls
CMD ./mvnw package
COPY target/spring-petclinic/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
#COPY ${JAR_FILE} /spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
