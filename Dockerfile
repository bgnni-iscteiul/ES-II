FROM openjdk:7
COPY ./src/main/java/es2-leipl.jar /usr/src/myapp
WORKDIR /src/myapp
EXPOSE 8080
CMD ["java", "-jar", "es2-leipl.jar"]
