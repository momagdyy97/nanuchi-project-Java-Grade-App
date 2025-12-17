FROM eclipse-temurin:11-jre-alpine

WORKDIR /usr/app

# Copy the built JAR into the image
COPY build/libs/my-app-1.0-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
