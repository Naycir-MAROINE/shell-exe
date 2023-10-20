#!/bin/bash

# Format de la date (jj-mm-aaaa-HH:MM)
date_format=$(date +'%d-%m-%Y-%H:%M')

# Utilisez la commande last pour afficher les connexions, wc -l compte les lignes, on envoie la valeur dans un fichier cible
last "$1"  | wc -l > number_connection-$date_format

# utilisation de tar pour compreser un fichier et le --force-local precise l'emplacement du fichier sur la machine
tar --force-local -cvf number_connection-$date_format.tar number_connection-$date_format 

# deplacer le fichier vers Backup
mv number_connection-$date_format.tar ./Backup





