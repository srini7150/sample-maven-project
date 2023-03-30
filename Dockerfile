FROM openjdk:19-jdk-alpine3.16
WORKDIR /app
COPY ./target/*.jar /app/
CMD java -jar *.jar