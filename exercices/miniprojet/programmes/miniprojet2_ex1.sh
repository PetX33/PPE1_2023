#!/usr/bin/env bash

# Prend le premier argument (le fichier texte) et le stocke dans la variable 'text'.
text=$1

# Utilise la commande 'cat' pour afficher le contenu du fichier spécifié par 'text'.
# Ensuite, utilise 'tr' pour effectuer plusieurs transformations sur le texte :
# - 'tr -d '[:punct:]'' supprime la ponctuation du texte.
# - 'tr '[:upper:]' '[:lower:]'' convertit les lettres majuscules en minuscules.
# - 'tr ' ' '\n'' remplace les espaces par des sauts de ligne, ce qui divise le texte en mots.
# Enfin, 'grep -v '^$'' filtre les lignes vides (mots vides) pour obtenir la liste des mots propres.
cat "$text" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | tr ' ' '\n' | grep -v '^$'
