#!/usr/bin/env bash

echo "$2 pour l'année $1 :"
cat ./ann/$1/*/*.ann | grep  $2 | wc -l 
