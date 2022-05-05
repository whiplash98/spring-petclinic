FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN sudo apt update -y
COPY git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
RUN ./mvnw package
RUN java -jar target/*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
