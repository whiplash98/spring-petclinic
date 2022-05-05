FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN sudo apt update -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
RUN sudo apt install default-jre -y
RUN sudo apt install openjdk-8-jre-headless
RUN ./mvnw package
RUN java -jar target/*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
