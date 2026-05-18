Lorsqu'on a séparé toute les données répétitives de l'entité principale et des entités qui en découle, on va pouvoir passé à la prochaine étape.

Ce étape consiste à extraire les données qui sont dans une entité mais qui ne sont pas directement à celle-ci.

Pour se faire, il faut se demandé si un attribut ou un groupe pourrait exister plusieurs fois dans une même entité, mais pour des membres différents.

Imaginons qu'on est commencé l'analyse d'une base de donnée pour une bibliothèque.
On a fini de [[Séparation des groupes répétitifs|séparer les groupes répétitifs]], on a trois entité, une pour les livres, une pour les auteurs et une autre pour les personnes.

![[Analyse biblioteque 1.excalidraw.svg]]
%%[[Analyse biblioteque 1.excalidraw|🖋 Edit in Excalidraw]]%%

Pour commencer, prenons l'entité **Livre**.
L'éditeur par exemple peut concerner plusieurs livres (on espère en tout cas pour l'éditeur). Donc c'est un bon candidat pour en faire une entité.

![[Analyse bibliotheque 2.excalidraw.svg]]
%%[[Analyse bibliotheque 2.excalidraw.md|🖋 Edit in Excalidraw]]%%

Dans notre entité "Personne", il y a de bonne chances qu'une localité pourrait être partagée par plusieurs personnes. 
C'est donc une entité qui doit sortir de l'entité "Personne", et comme la localité et le code postal sont lié, ils vont sortir ensemble de l'entité Personne.

![[Analyse bibliotheque 3.excalidraw.svg]]
%%[[Analyse bibliotheque 3.excalidraw.md|🖋 Edit in Excalidraw]]%%

Une fois qu'on a faite cette exercice pour chaque entité, et pour chaque entité nouvellement crée.

## Aller plus loin, mais pas trop loin.

Lorsqu'on normalise[^1] une base de données, on peut aller . Par exemple on pourrait se dire que la rue pourrait  être aussi être sortie de l'entité personne (c'est parfaitement valable). Ceci dit, pour une bibliothèque, le nombre d’occurrence de la rue par rapport à la localité est bien moindre et donc cela aurait peu d'intérêt.

Par contre, si votre base de données sert à gérer un réseaux électrique, là, il est fort probable que la rue sorte de l'entité "Personne" car il est fort probable que tout les habitants cette rue soit clients du gestionnaire de réseau. Dans ce cas cela fera sens.

Tout est une question de mesure. 

[^1]: c'est le terme utilisé pour ce qu'on est en train de faire.