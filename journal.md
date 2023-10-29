#Journal de Perrine

#Séance 2 (27/09) 

- Nous avons vu en cours, les commandes à utiliser 
pour faire l'exercices demandé, qui consiste à créer des dossiers et 
déplacer des fichiers dans les dossiers voulus. Lors de l'exécution de cet 
exercices je n'ai pas rencontré de problème particulier. Les différentes 
lignes de commande utilisées sont disponibles dans le dossier exercices '27_09-Resultat_ Terminal.txt', ainsi que les dossiers rangés.
 
- On a ensuite appris à créer une clé de sécurité SSH ainsi que les 
différentes commandes git, pour actualiser notre dépot et récupérer les 
mise à jour des dépots de tiers.

#Séance 3 (4/10)

- Pendant le cours nous avons vu de nouvelles commandes git:
notamment, git reset pour revenir en arrière avant qu'on ai push et 
git revert pour  revenir en arrière après qu'on ai push. Parmi le git reset, il y a 
la version douce et la version dure.

Doux : 
git reset HEAD~1 : va revenir au commit précédent et annuler la mise en place
git reset --soft HEAD~1 : va revenir au commit précédent et ne vas pas annuler 
la mise en place.

Dure :
git reset --hard HEAD~1 : va revenir à la version précédente et supprimer tout 
les changements.


#Séance4 (11/10): 
- Nous avons fait la correction de l'exercice git. Nous avons également vu l'utilisation des pipelines afin d'entrer plusieurs commande à la suite sur le terminal. également comment rediriger vers ou depuis des fichiers. Finalement nous avons écris notre premier scipt shell et vu l'utilisation de variables dans le script et des arguments à l'appel du script.

#Séance5 (18/10): 
- Nous avons vu l'utilisation des instructions conditionnelles, ainsi que les boucles while et for. 
- Afin de nous aider pour le projet, nous avons découvert l'utilisation de lynx, un navigateur sur le terminal, qui permet de récupérer le texte brut des sites 
notamment, ainsi que la commande curl, qui permet de voir si un site est OK ou s'il y a des erreurs, de savoir l'url exact, l'encodage du texte dans certains cas, etc. 
- PROJET (18/10): 
• Nous sommes dans la réflexion de savoir quels mots choisir pour le projet, nous avons déjà une sélection de plusieurs (education, désinformation, violence...) mais nous ne nous sommes pas mis d'accord. Concernant le choix des langues, celui-ci a été plus rapide, Français, Chinois et Anglais, mais nous ne nous sommes pas encore réparti, qui travaillera sur quelle langue. 
- PROJET (20/10): 
• Nous nous sommes finalement mis d'accord pour choisir le mot "désinformation" qui est il nous semble plutôt d'actualité et attire notre curiosité sur son utilisation en Chine et en France ou dans les pays anglophones (reste à voir quel pays anglophone).

#Séancee6 (25/10):
- Nous avons commencé à travailler sur le projet, en essayant de récupérer les urls situé dans un fichier txt, ainsi que leur code HTTP, leur encodage avec la commande curl et en utilisant des expressions régulière et la commande cut pour récupérer seulement ce qui nous interesse, pour au final les mettre dans un fichier au format HTML.
- PROJET (29/10)
J'ai commencé à récupérer des urls de site de press américaine, puisque je m'occupe de la langue anglaise. Nous avons décidé de nous concentré sur la presse car c'est un format plutot officiel et qui nous semble plus approprié pour le mot sur lequel nous avons décidé de travailler. J'ai pu tester le programme du miniprojet pour voir si les pages avec un code HTTP de 200 ou non, et également voir celles qui avait un encodage ou non.

