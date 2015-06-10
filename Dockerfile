FROM maven
ADD pom.xml /app/
ADD src/ /app/src/
WORKDIR /app/
RUN mvn package
EXPOSE 8080
CMD ["java", "-jar", "target/dckr-boot-sample-0.1.0.jar"]
