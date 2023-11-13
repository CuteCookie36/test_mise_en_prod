FROM eclipse-temurin:17-jdk-jammy

# Créer un répertoire pour l'application
RUN mkdir /app

# Copier le code source dans le conteneur
COPY ./demo /app

# Définir le répertoire de travail
WORKDIR /app

# Exécuter la construction de l'application avec Gradle
RUN ls -l 
RUN chmod +x ./gradlew 
RUN ./gradlew build -x test

# Commande pour lancer l'application
#CMD ["java", "-jar", "./build/libs/demo-0.0.1-SNAPSHOT.jar"]

RUN addgroup -S spring && adduser -S spring -G spring
RUN chown -R spring:spring /app

USER spring:spring

ENTRYPOINT java -jar ./build/libs/demo-0.0.1-SNAPSHOT.jar 
EXPOSE 8080


