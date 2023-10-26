#!/usr/bin/env bash

if [ $# -ne 1 ];
then
	echo "Un argument attendu exactement"
	exit
fi

if [ -f $1 ]
then
	echo "On a bien un fichier"
else
	echo "On attend un fichier qui existe"
	exit
fi

fichier=$1
lineno=1

while read -r line;
do
	# réponse HTTP
	code=$(curl -ILs $line | grep -e "^HTTP/" | grep -Eo "[0-9]{3}" | tail -n 1)
	
	# récupération de l'encodage
	charset=$(curl -Ls "$line" | grep -Eo "charset=.+" | cut -d'"' -f2)

	 # Déterminer le résultat en fonction du code de réponse HTTP
	if [ "$code" -eq 200 ]; then
		result="OK"
	else
		result="Not OK"
	fi

	if [[ -z $charset ]]
	then
		echo -e "\tencodage non détecté.";
	else
		echo -e "\tencodage : $charset";
	fi

	# le -e reste affiché dans le fichier de sortie
	echo -e "${lineno}\t${code}\t${result}\t${line}\t${charset}" >> ../tableaux/tableau-fr.html

	((lineno++));
done < "$fichier"
