FROM java:8-jdk-alpine
RUN apk update
ADD https://github.com/spring-projects/spring-petclinic.git /spring-petclinic/
CMD cd /spring-petclinic/
CMD ./mvnw package
ADD target/spring-petclinic-2.6.0-SNAPSHOT.jar /spring-petclinic-2.6.0-SNAPSHOT.jar
COPY ${JAR_FILE} /spring-petclinic-2.6.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-petclinic-2.6.0-SNAPSHOT.jar"]
