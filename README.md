# Guide d'utilisation du projet

## Génération du snapshot

Exécutez la commande suivante pour générer le snapshot avec une version à 3 chiffres :

`./gradlew.bat`

## Génération du JAR avec Gradle

`./gradlew build` 

## Lancement du JAR avec Java

`java -jar ./build/libs/demo-0.0.1-SNAPSHOT.jar`

## Construction de l'image Docker
`docker build -t test . `

**Pour avoir plus d'informations sur les erreurs:**
`docker build --progress plain -t test .`
Une erreur venait du fichier "test" c'est pourquoi on l'a skip.

## Exécution du conteneur Docker

`docker run -it test bash`

dans le bash: 
`root@47e7c9d33cd4:/app# java -jar ./build/libs/demo-0.0.1-SNAPSHOT.jar `

Etant donné que l'application crashait, on a créé un docker-compose.yaml pour lancer aussi une base de données.
En tant qu'utilisateur, la seule commande à lancée est: *docker compose up* qui va permttre de lancer les conteneurs.

Si vous souhaitez lancer les conteneurs :
`docker compose up -d`

Si vous souhaitez arrêter les conteneurs:
`docker compose down`

Si vous souhaitez rebuild le docker compose:
`docker compose restart`

Si vous souhaitez lancer un shell après avoir lancé les conteneurs:
`docker exec -it test_mise_en_prod-database-1 /bin/bash`


