# Git et GitHub

## Quelle est la différence entre les deux ? Pourquoi une entreprise utilise-t-elle une plateforme comme GitHub (ou un GitLab interne) ?

Git et GitHub fonctionnent ensemble, mais diffèrent l'un de l'autre. Le premier est un logiciel sur lequel on va pouvoir poster les différentes versions de notre travail (scripts, fichiers texte etc...), les enregistrer et les commenter. GitHub est la plateforme en ligne qui va répertorier les items créés sur Git et les héberger. L'un est local et l'autre est remote.  
Il est très commode pour une entreprise d'utiliser un GitHub car cela permet non seulement de pouvoir travailler efficacement à plusieurs sur un même projets (chaque membre du projet peut avoir accès aux différents items), mais aussi de pouvoir aisément revenir à une itération ou version antérieure en cas de suppression malencontreuse, d'erreur ou de corruption de la version actuelle, le tout très facilement et sans crainte de perdre des jours, voire des semaines de travail.  

# Le cycle de contribution

## Décrivez les étapes, de la modification d'un fichier jusqu'à son arrivée sur le dépôt distant. Nommez les commandes.

Avant tout, cela prérequiert d'avoir téléchargé Git sur sa machine, d'avoir connecté ladite machine en SSH à GitHub (génération d'une clé privée et publique) et de s'être identifié sur Git au GitHub concerné.  
Ensuite :  
Étape 1 *Creation time* → Création d'un fichier avec un éditeur de texte. On le remplit avec un script ou du code ou du texte. L'extension sera en .sh si c'est du bash et en .ps1 si c'est du powershelle. `nano mon_fichier.sh`  
Étape 1.5 (si le fichier est en bash et que c'est un script) *Gimme the permission* → On donne les droits d'exécution du script. `chmod +x mon_fichier.sh`  
Étape 2 *Take it* → On ajoute le fichier sur Git. `git add mon_fichier.sh`  
Étape 3 *Remember me* → On crée le commit, qui va permettre de pouvoir garder un historique et un versionnage du fichier. On peut également ajouter un commentaire qui permettra de comprendre ce à quoi correspond le fichier. code : `git commit -m "commentaire du fichier"`  
Étape 4 *To the moon !* → On push, on envoie le fichier sur GitHub pour le mettre sur la plateforme, en ligne, à disposition des ayants-droit. `git push`  

# Pull avant Push

## Pourquoi fait-on git pull avant git push quand on travaille en équipe ? Que se passe-t-il si on l'oublie ?

Il est essentiel de réaliser la commande `git pull`  
La raison est simple, si on ne le fait pas, lorsque l'on va vouloir push, notre fichier pourra être rejeté par GitHub. En effet, la version locale sur laquelle on travaille n'est pas forcément synchronisée avec la version "push", celle de GitHub. Cela peut donc créer un conflit dont l'issue serait le rejet pur et simple de notre fichier.  

# Messages de commit

## Donnez 3 bons messages et 3 mauvais messages et expliquez en une phrase ce qui fait la différence.

| Mauvais | Bon |
|---|---|
| Bug fix  | Correction de l'erreur "nom de l'erreur" qui empêchait le lancement du script |
| Correction finale vérifiée | Correction finale V(numéro de version de la correction) |
| Script efficace comme René après trois allongés  | Script "nom du script" testé et validé prêt pour la prod  |

De manière générale, un mauvais message de commit manque de clarté, nuit à la compréhension de l'équipe. Un bon message doit pouvoir être indexable et reconnaissable en une seconde. On sait ce qu'on va y trouver avant même de l'ouvrir.
