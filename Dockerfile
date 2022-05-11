FROM java:8-jdk-alpine
RUN apk update
WORKDIR /usr/app/
ADD https://github.com/spring-projects/spring-petclinic.git /usr/app/
CMD cd /usr/app/spring-petclinic/
CMD ./mvnw package
RUN cd /usr/app/
RUN ls
RUN cd spring-petclinic.git
COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
