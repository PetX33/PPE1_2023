#!/usr/bin/env bash

#pour accepter *, en lançant le script mettre "*" comme argument

# Vérifier si les 3 arguments sont fournis
if [ $# -ne 3 ]; then
  echo "Usage: $0 <Year> <Month> <NumLines>"
  exit 1
fi

Year="$1"
Month="$2"
NumLines="$3"

# Vérifier si le répertoire ./ann/$Year/$Month/ existe
if [ ! -d "./ann/$Year/$Month" ]; 
then
  if [ "$Year"!="*" ] || [ "$Year"<"2016"] || [ "$Year">"2018"] ; 
  then
    echo "Le répertoire ./ann/$Year/$Month/ n'existe pas."
    exit 1
  fi

  if [ "$Month"!="*" ] || [ "$Month"<"01" ] ||  [ "$Month">"12" ] ;
  then
    echo "Le répertoire ./ann/$Year/$Month/ n'existe pas."
    exit 1
  fi
fi

# Vérifier si $NumLines est un nombre positif
if ! [[ "$NumLines" =~ ^[0-9]+$ ]]; then
  echo "NumLines n'est pas un nombre positif."
fi

# Exécuter la commande
cat ./ann/$Year/$Month/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$NumLines"