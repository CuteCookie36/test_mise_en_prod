# Guide d'utilisation du projet

## Génération du snapshot

Exécutez la commande suivante pour générer le snapshot avec une version à 3 chiffres :

./gradlew.bat

## Lancement du conteneur JDK: 

docker run -it eclipse-temurin-jdk

## Génération du JAR avec Gradle

./gradlew build

## Lancement du JAR avec Java

java -jar ./build/libs/demo-0.0.1-SNAPSHOT.jar

## Construction de l'image Docker

docker build --progress plain -t test .

## Exécution du conteneur Docker

docker run -it test bash


Cela devrait donner une présentation plus lisible et organisée des instructions pour utiliser le projet.


