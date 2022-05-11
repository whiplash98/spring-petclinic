FROM java:8-jdk-alpine
RUN apk update
WORKDIR /usr/app/
ADD https://github.com/spring-projects/spring-petclinic.git /usr/app/
CMD cd /usr/app/spring-petclinic/
CMD mvn package
CMD mv ${JAR_FILE} /spring-petclinic-2.6.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-petclinic-2.6.0-SNAPSHOT.jar"]
