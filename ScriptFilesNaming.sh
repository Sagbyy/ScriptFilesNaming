#!/bin/bash

read -p "Dans quel dossiers voulez-vous renommer vos fichiers : " folder
read -p "Quel est l'extension de vos fichiers : " extension
read -p "Comment voulez-vous nommer les fichiers dans le dossiers $folder : " name

# Récupère le nombre de ligne dans le dossier
num_files=$(ls -1 $folder | wc -l)

# Boucle pour parcourir le dossier
for (( i = 1; i <= $num_files; i++ ))
do
  # Commande afin de récuperer chaque nom de fichier de chaque ligne
  file_name=$(ls -1 $folder | head -$i | tail -1)

  # Renomme le fichier en le déplacant
  mv "$folder/$file_name" "$folder/$name-$i.$extension"

  echo "Le fichier $file_name à correctement été modifier par $name-$i"
done
