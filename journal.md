Journal de Perrine

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
