FROM java:8-jdk-alpine
RUN apk update
WORKDIR /tmp/target/
ADD https://github.com/spring-projects/spring-petclinic.git /tmp/target/
CMD cd /tmp/target/spring-petclinic/
CMD ./mvnw package
COPY ${JAR_FILE} /spring-petclinic-2.6.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-petclinic-2.6.0-SNAPSHOT.jar"]
