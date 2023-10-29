#!/usr/bin/env bash

if [ $# -ne 2 ];
then
	echo "Deux arguments attendu exactement"
	exit
fi

if [ -f $1 ]
then
	echo "On a bien un fichier"
else
	echo "On attend un fichier qui existe"
	exit
fi

fichier_urls=$1
fichier_tableau=$2

basename=$(basename -s .txt $fichier_urls)
lineno=1

echo 	"<html>
	<head>
		<meta charset=\"utf-8\" />
		<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css\">
		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
		<title>Tableau des URLS</title>
	</head>
	<body>
		<h1 class=\"title\">Tableau des URLs $basename</h1>
		<table class=\"table is-bordered\">
			<thead><tr><th>ligne</th><th>code HTTP</th><th>URL</th><th>encodage</th></thead>" > "../tableaux/$fichier_tableau"


while read -r URL;
do
	echo -e "\tURL : $URL";
	# réponse HTTP
	code=$(curl -ILs $URL | grep -e "^HTTP/" | grep -Eo "[0-9]{3}" | tail -n 1)
	
	# récupération de l'encodage
	charset=$(curl -Ls $URL | grep -Eo "charset=.+" | cut -d'"' -f2)

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

	
	echo "			<tr><td>$lineno</td><td>$code</td><td><a href=\"$URL\">$URL</a></td><td>$charset</td></tr>" >> "../tableaux/$fichier_tableau"

	((lineno++));
done < "$fichier_urls"
