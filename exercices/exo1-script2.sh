#!/usr/bin/env bash

annees=("2016" "2017" "2018")

type_entite="$1"

for annee in "${annees[@]}"; do
  echo "Exécution de ./exo1-script1.sh avec année $annee et type d'entité $type_entite"
  ./exo1-script1.sh "$annee" "$type_entite" >> resultat_exo_1-2.txt
done

echo "Les résultats ont été enregistrés dans resultat_exo_1-2.txt"
