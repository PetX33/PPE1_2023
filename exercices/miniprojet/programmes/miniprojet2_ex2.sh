#!/usr/bin/env bash

text=$1
nb_words=$2
script="./miniprojet2_ex1.sh"

if [ $# -lt 1 ]; 
then
  echo "Usage: "script" <fichier_texte> [nombre_de_mots]"
  exit 1
fi

if [ -z $nb_words ]; 
then
    nb_words=25
fi

words=$($script $text)

most_common_word=$(echo "$words" | tr ' ' '\n' | sort | uniq -ci | sort -nr | head -$nb_words)

echo "$most_common_word"