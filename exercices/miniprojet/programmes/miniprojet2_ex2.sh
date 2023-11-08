# Récupérer le premier argument (fichier texte) et le deuxième argument (nombre de mots) du script.
text=$1
nb_words=$2

# Chemin vers le script miniprojet2_ex1.sh
script="./miniprojet2_ex1.sh"

# Vérifier si au moins un argument a été fourni au script.
if [ $# -lt 1 ]; 
then
  echo "Usage: $script <fichier_texte> [nombre_de_mots]"
  exit 1
fi

# Si le deuxième argument (nombre de mots) n'est pas spécifié, définir la valeur par défaut à 25.
if [ -z $nb_words ]; 
then
    nb_words=25
fi

# Exécuter le script miniprojet2_ex1.sh avec le fichier texte passé en argument et stocker les mots obtenus.
words=$($script $text)

# Trouver les mots les plus courants en comptant les occurrences, en les triant, en les regroupant et en prenant les premiers mots.
most_common_word=$(echo "$words" | tr " " "\n" | sort | uniq -ci | sort -nr | head -$nb_words)

# Sauvegarder les mots les plus courants dans un fichier "most_common_word.txt".
echo "$most_common_word" > most_common_word.txt
