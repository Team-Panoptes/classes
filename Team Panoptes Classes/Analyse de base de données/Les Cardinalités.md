---
publish: true
---
Les cardinalités sont une indication du nombre d'éléments avec laquelle une entité peut-être en relation avec une autre.

Exemple: Une Personne habite dans une et une seule ville, on dira que la cardinalité est **1, 1** 
Par contre, une ville peut être habité par une ou plusieurs personnes, on dira que la cardinalité est de **1, N**.

![](Analyse_personne.excalidraw.svg)
%%[[Analyse_personne.excalidraw|🖋 Edit in Excalidraw]]%%

Autre Exemple: Un livre peut-être emprunter par 0 à plusieurs personnes, on dira que la cardinalité est de **0, N** et une personne peut emprunter entre 1 et plusieurs livres, on dira que la cardinalité est de **1, N**.

![](Analyse_bibliotheque_4.excalidraw.svg)
%%[[Analyse_bibliotheque_4.excalidraw|🖋 Edit in Excalidraw]]%%

Les cardinalités vont être importante pour le moment où l'on va passer au modèle physique des données.

Les cardinalités sont toujours exprimées avec un minimum et un maximum.
La valeur minimum peut-être 0 ou 1. La valeur maximum peut-être 1 ou N, N exprimant une infinité de données.
Si le nombre est supérieur a 1, même 2 ou mettra N.

Une fois que les cardinalités sont posée, on a notre base de données normalisée.
Il reste encore un peu de peaufinage, mais on a déjà fait une grosse partie de travail.


