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

# RUN <<EOF
# curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php
# php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer -version=2.6.2
# EOF

# RUN composer update
# RUN composer install


ENTRYPOINT java -jar ./build/libs/demo-0.0.1-SNAPSHOT.jar 
EXPOSE 8080 