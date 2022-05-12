FROM java:8-jdk-alpine
RUN apk update
WORKDIR /tmp/target/
ADD https://github.com/spring-projects/spring-petclinic.git /tmp/target/
CMD ./mvnw package
COPY target/spring-boot-docker.jar spring-boot-docker.jar /spring-boot-docker.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
