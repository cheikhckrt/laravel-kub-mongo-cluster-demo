FROM laravelsail/php82-composer:latest

RUN docker-php-ext-install pdo_mysql

# Installer les extensions PHP manquantes
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    && docker-php-ext-install xml dom

# Nettoyer les fichiers inutiles pour réduire la taille de l'image
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /var/www/html
