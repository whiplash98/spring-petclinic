FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /.jar /*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
