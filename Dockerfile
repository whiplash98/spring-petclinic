FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
RUN sudo apt install default-jre -Y
RUN sudo apt install openjdk-8-jre-headless
RUN sudo apt install maven
RUN ./mvnw package
RUN java -jar target/*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
