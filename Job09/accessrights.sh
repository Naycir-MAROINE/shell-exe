#!/bin/bash
# Spécifiez le chemin complet vers le fichier CSV contenant les informations des utilisateurs

csv_file="\\wsl.localhost\Ubuntu\home\lol\Documents\La Plateforme\shell.exe\job9\Shell_Userlist.csv"
# Verifier si le fichier CSV existe
if [ -f "$csv_file" ]
then
#lire le fichier CSV ligne par ligne et créer les utilisateur 
   awk -f ',' 'NR > 1 {
     username = $1
     role = $2
     system(" useradd " username)
     print "Utilisateur créé : " urername
     if ( role == " admin") {
        system(" usermod -aG sudo " username)
     print "Permissions du super utilisateur accordées à :" username}
     }' "$csv_file"
     password=$(< /dev/urandon tr -dc A-Za-z0-9 | head -c6)
    echo -e "$password\n$password" | passwd "$username"
    echo " Mot de passe défini pour $username"
else
 echo" Le fichier CSV n'existe pas."
fi
# Commande a exécuter lorsque le fichier CSV est modifié
command_to_run="\\wsl.localhost\Ubuntu\home\lol\Documents\La Plateforme\shell.exe\job9\Shell_Userlist.csv"

