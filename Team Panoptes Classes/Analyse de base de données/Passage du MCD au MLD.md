---
publish: true
---
Donc pour passé du MCD au MLD, les étapes sont assez simples.
1. Repérer tout les relations 1 ou 0 à N.
	Pour chaque relation 1 à N:
	1. Retirer la symbolisation de la relation pour ne garder que le lien
	2. Copier la clé primaire de la table "mère" (celle avec la cardinalité N) pour la donnés à la tables "fille" sous forme de clé étrangère.
2. Repérer toutes les relations N à N.
   Pour chaque relation N à N:
	1. Transformer la symbolisation de la relation en table (qu'on nomme à l'aide des tables connectée).
	2. Si il y a avait des données dans la relation, elle resteront dans la nouvelle table.
	3. Copier toutes les clés primaires des tables "mères"  dans la nouvelle "filles" sous forme de clé étrangère. L'ensemble de ses clés deviennent la clé primaire de la nouvelle table.
Et voilà.