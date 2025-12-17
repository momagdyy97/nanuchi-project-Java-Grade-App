FROM eclipse-temurin:11-jre-alpine

WORKDIR /usr/app

# Copy the built JAR into the image
COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
