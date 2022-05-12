FROM java:8-jdk-alpine
RUN apk update
WORKDIR /tmp/target/
ADD https://github.com/spring-projects/spring-petclinic.git /tmp/target/
CMD ./mvnw package
CMD mv /tmp/target/*.jar /
COPY ${JAR_FILE} /spring-boot-docker.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
