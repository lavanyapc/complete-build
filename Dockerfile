FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/classes /app/classes
CMD ["java", "-cp", "classes", "HelloWorld"]
