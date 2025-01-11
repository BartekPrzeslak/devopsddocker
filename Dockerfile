# Użycie OpenJDK 17 jako podstawowego obrazu
FROM openjdk:17-jdk-slim

# Katalog roboczy w obrazie
WORKDIR /app

# Skopiowanie pliku JAR do obrazu
COPY target/demoDockerCompose-0.0.1-SNAPSHOT.jar app.jar

# Wystawienie portu 8080
EXPOSE 8080

# Komenda startowa kontenera
ENTRYPOINT ["java", "-jar", "app.jar"]

