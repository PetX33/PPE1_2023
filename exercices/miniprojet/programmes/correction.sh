#!/usr/bin/env bash

URLS=$1

lineno=1

while read -r URL
do
	reponde=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | ggrep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	
	echo -e "$lineno\t$URL\t$reponse\t$encoding"
	lineno=$(expr $lineno + 1)
done < "$URLS"