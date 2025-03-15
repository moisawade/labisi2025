#!/bin/bash

# Variables
CONTAINER_NAME="l3isi-app"
IMAGE_NAME="l3isi-app:latest"

# Arrêt du conteneur existant
sudo docker stop $CONTAINER_NAME || true
sudo docker rm $CONTAINER_NAME || true

# Suppression de l'image existante
sudo docker rmi $IMAGE_NAME || true

# Exécution du conteneur
sudo docker run -d -p 80:80 --name $CONTAINER_NAME $IMAGE_NAME