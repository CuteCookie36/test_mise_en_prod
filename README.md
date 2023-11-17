## Docker en local:
Faites un git clone de : `https://github.com/CuteCookie36/test_mise_en_prod/tree/main Puis lancer la commande: docker compose up`

## Docker sous Jenkins:
Faites un git clone de : `https://github.com/CuteCookie36/test_mise_en_prod/tree/tryJenkins`

Mettez vous dans le repertoire jenkins-compose (attention il y en a 2, faites un ls pour vérifier qu'il y a bien le docker-compose).

Puis lancer la commande: `docker compose up -d`.

Il faut ensuite se rendre à l'adresse `http://localhost:8001` et se connecter.

Et enfin créer un nouveau pipeline (ajouter un job) avec le code contenu dans le fichier 'Jenkinsfile'.

Il ne reste plus qu'à lancer le build pour build l'image docker et la push sur le hub dans Docker Hub.

