#!/usr/bin/env bash

# Définition de la variable 'text' à partir du premier argument.
text=$1

# Nom du fichier de sortie pour les bigrammes.
output_file="bigrammes.txt"

# Chemin vers le script miniprojet2_ex1.sh.
script="./miniprojet/programmes/miniprojet2_ex1.sh"

# Vérifier si au moins un argument a été fourni au script.
if [ $# -lt 1 ]; 
then
  echo "Usage: $script <fichier_texte> [nombre_de_mots]"
  exit 1
fi

# Si le deuxième argument (nombre de mots) n'est pas spécifié, définir la valeur par défaut à 25.
if [ -z "$2" ]; 
then
    nb_words=25
else
    nb_words="$2"
fi

if ! [[ "$nb_words" =~ ^0*[1-9][0-9]*$ ]];
then
    echo "donnez un entier positif non nul !"
    exit 1
fi 

# Exécute le script miniprojet2_ex1.sh avec le fichier texte passé en argument et redirige la sortie vers le fichier 'out1'.
"$script" "$text" > out1

# Supprime la première ligne de 'out1' et stocke le résultat dans 'out2'.
tail -n+2 out1 > out2

# Utilise la commande 'paste' pour concaténer les lignes de 'out1' et 'out2'.
# Ensuite, trie, compte les occurrences, trie de nouveau et prend les $nb_words premiers bigrammes.
paste out1 out2 | sort | uniq -ci | sort -nr | head -n $nb_words #> "$output_file"

# Supprime les fichiers temporaires 'out1' et 'out2'.
rm out1 out2
