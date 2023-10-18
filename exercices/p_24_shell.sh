#!/usr/bin/env bash

echo "Locations en 2016" > reponse_exercices_p_24_shell.txt
cat ./ann/2016/*/*.ann | grep Location | wc -l >> reponse_exercices_p_24_shell.txt

echo "Locations en 2017" >> reponse_exercices_p_24_shell.txt
cat ./ann/2017/*/*.ann | grep Location | wc -l >> reponse_exercices_p_24_shell.txt

echo "Locations en 2018" >> reponse_exercices_p_24_shell.txt
cat ./ann/2018/*/*.ann | grep Location | wc -l >> reponse_exercices_p_24_shell.txt

echo "Locations les plus souvent cités pour le mois de février" >> reponse_exercices_p_24_shell.txt
cat ./ann/*/02/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head  >> reponse_exercices_p_24_shell.txt

echo "Classement des locations pour l'année 2016" >> reponse_exercices_p_24_shell.txt
cat ./ann/2016/*/*.ann | grep Location | cut -f 3 |  sort | uniq -c | sort -nr | head -n 20  >> reponse_exercices_p_24_shell.txt

echo "Classement des locations pour l'année 2017" >> reponse_exercices_p_24_shell.txt
cat ./ann/2017/*/*.ann | grep Location | cut -f 3 |  sort | uniq -c | sort -nr | head -n 20  >> reponse_exercices_p_24_shell.txt

echo "Classement des locations pour l'année 2018" >> reponse_exercices_p_24_shell.txt
cat ./ann/2018/*/*.ann | grep Location | cut -f 3 |  sort | uniq -c | sort -nr | head -n 10  >> reponse_exercices_p_24_shell.txt

echo "Annotations les plus fréquentes pour le mois de février" >> reponse_exercices_p_24_shell.txt
cat ./ann/*/02/*.ann | cut -f 3 | sort | uniq -c | sort -nr | head -n 10 >> reponse_exercices_p_24_shell.txt