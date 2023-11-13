 # Base image
FROM eclipse-temurin:17-jdk-jammy

# Créer un répertoire pour l'application
RUN mkdir /app

# Copier le code source dans le conteneur
COPY ./demo /app

# Définir le répertoire de travail
WORKDIR /app

# Donner les droits d'exécution au script Gradle et construire l'application
RUN chmod +x ./gradlew && ./gradlew build -x test

# Commande pour lancer l'application
ENTRYPOINT ["java", "-jar", "./build/libs/demo-0.0.1-SNAPSHOT.jar"]
