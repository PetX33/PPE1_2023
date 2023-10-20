#!/usr/bin/env bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <Year> <Entity>"
  exit 1
fi

annee=$1
entite=$2

if [[ "$annee" -ge 2016 && "$annee" -le 2018 ]];
then
    count=$(cat ./ann/$annee/*/*.ann | grep  $entite | wc -l)
    echo "$entite pour l'année $annee :"
    if [ "$count" -eq 0 ]; 
    then
        echo "L'entité $entite n'existe pas."
    else
        echo $count
    fi
else
    echo "$annee n'existe pas."
fi
