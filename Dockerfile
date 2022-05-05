FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN ./mvnw package
RUN java -jar target/*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
