FROM openjdk:7
COPY ./src/main/java/es2-leipl.jar /src/main/java
WORKDIR /src/main/java
EXPOSE 8080
CMD ["java", "es2-leipl.jar"]
