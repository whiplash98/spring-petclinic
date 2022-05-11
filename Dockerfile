FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD https://github.com/spring-projects/spring-petclinic.git /tmp/
CMD ./mvnw package
RUN cd /tmp/spring-petclinic/
EXPOSE 8080
COPY 
ENTRYPOINT ["java","-jar","/spring-petclinic-2.6.0-SNAPSHOT.jar"]
