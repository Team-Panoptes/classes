---
publish: true
---
Il est impossible pour une base de données relationnels de modélisé les relations de N à N.
Il ne serait pas possible d'avoir une clé étrangère qui pointe sur plusieurs clés primaires à la fois.

Pour modéliser les relations de N à N on va s'aider d'une table intermédiaire.
Une table intermédiaire est une table qui va contenir les clés étrangères des deux tables qui sont impliquées dans la relation et qui servira donc d'*intermédiaire* dans cette relation.

## Création d'une table intermédiaire

Pour comprendre comment fonctionne une table intermédiaire, on va en créer une.

Reprenons les entiées `Livre` et `Auteur` de notre Bibliothéque. On est bien en fasse d'une relation N à N [^1]

![](Table_intermédiaire_-_1.svg)
%%[[Table_intermédiaire_-_1|🖋 Edit in Excalidraw]]%%

Comme il a été dit lorsqu'on a parlé des [[Clé étrangère#^c0c90a|clé étrangères]] les relations se simplifie pour ne laisser plus qu'une ligne. Pour les relations N à N c'est un peu plus compliqué:
Ce qui symbolise la relation (ici "Ecrire") devient une table. 


Cette table on ne va pas la nommé "Ecrire" [^2], une des façons classique c'est de nommé la table du nom des deux (ou plus table qu'elle relie). Dans le cas qui nous occupe, nous aurons la table `Livre_Auteur`.

![](Table_intermédiaire_-_2.svg)
%%[[Table_intermédiaire_-_2|🖋 Edit in Excalidraw]]%%


Les tables `Livre` et `Auteur` seront toutes les deux "mères" de `Livre_Auteur` qui elle sera donc la "fille". Donc la relation va être divisée en deux, une `Livre` - `Livre_Auteur` et une `Auteur` -  `Livre_Auteur`.
Comme `Livre_Auteur` est une table fille pour les deux relations, ses cardinalités pour les deux relations seront "1, 1".

![](Table_intermédiaire_-_3.svg)
%%[[Table_intermédiaire_-_3|🖋 Edit in Excalidraw]]%%


Qui dit relation, dit clé étrangère. Les tables "mères" vont donc transmettre leur clé à la table "fille". Et la combinaison des clés étrangères sera la clé primaire. [^3] de la table intermédiaire [^4]

![](Table_intermédiaire_-_4.svg)
%%[[Table_intermédiaire_-_4|🖋 Edit in Excalidraw]]%%

### Dans le cas où il y a des données dans la relation

Dans ce cas là, les données qui était dans la relation seront dans la table intermédiaire.
Prenons le cas des emprunts de livres.

![](Table_intermédiaire_-_5.svg)
%%[[Table_intermédiaire_-_5|🖋 Edit in Excalidraw]]%%


Une fois que la table intermédiaire est crée il faut se poser la question que l'une des données qui sont issue de la relation (ici : `date emprunt` et `date retour` ) doivent faire partie de la clé primaire.

Pour déterminer ça, poser vous la question suivante:
"Est-ce que dans le groupe de données, y'a-til une ou plusieurs données qui font partie de l'unicité de cette table?"
Et aussi:

"Est-ce que les clés primaire déjà là (c'est à dire les clés étrangères) sont suffisante pour garantir l'intégrité des données? "

Ici la clé primaire étrangère et composé d'une clé étrangère qui pointe sur `livre` et d'une clé étrangère qui pointe sur `personne`. 
Ce qui veut dire que en l'état une personne ne peut louer qu'une seul fois un livre (puisque la table ne pourra accueillir qu'une occurrence de `livre` par `personne`). Il faut donc ajouter l'un des champs.

Celui qui fait le plus de sens c'est le champs `date emprunt`, car le champ `date tour` peut être null.

![](Table_intermédiaire_-_6.svg)
%%[[Table_intermédiaire_-_6|🖋 Edit in Excalidraw]]%%

Il y a évidemment des cas où la ou les données restées dans la table ne seront pas utilisé dans la clé primaire et donc la clé primaire sera uniquement composé des clés étrangères.

![](Table_intermédiaire_-_7.svg)
%%[[Table_intermédiaire_-_7|🖋 Edit in Excalidraw]]%%

Dans ce cas-ci, comme on pourrait avoir la même `donnée` pour deux `type de moyen de communication` par exemple vous avez le même numéro pour votre "numéro de travail et pour votre "numéro personnel" l'unicité ne doit concernée que les deux clés étrangères.

## Table intermédiaire vue de l'intérieur

Imaginons les tables remplies pour comprendre le mécanisme

**`Livre`**

| livre_id | isbn          | titre                         |
| -------- | ------------- | ----------------------------- |
| 1        | 9782412088371 | Votre idée va devenir réalité |
| 2        | 9781647005368 | Doom Guy                      |
| 3        | 9782505114963 | Naruto - 2                    |
| 4        | 9782073119391 | Voyages au pays des maths     |
 
 **`Personne`** (un peu tronquée)

| personne_id | nom     | prenom  |
| ----------- | ------- | ------- |
| 1           | Lenoir  | Nicole  |
| 2           | Stassin | Thomas  |
| 3           | Carème  | Maurice |


**`Livre_Personne`**

| livre_xid | personn_xid | date emprunt | date_retour |
| --------- | ----------- | ------------ | ----------- |
| 1         | 2           | 2026-05-19   |             |
| 2         | 2           | 2026-05-19   |             |
| 3         | 1           | 2025-04-03   | 2025-04-05  |
| 4         | 3           | 2025-04-06   | 2025-06-01  |
| 3         | 2           | 2024-12-20   | 2024-12-21  |
Si on veut savoir quels sont les livres emprunter par Thomas Stassin, on doit se référé à la valeur de la clé primaire pour cette personne, dans ce cas-ci 1 et regardé quel sont les livre_xid des lignes qui ont pour personne_ix 2. On aura donc les clés primaires des livres loué par Thomas Stassin et donc on pourra avoir les informations sur ceux-ci.

![](Explications_table_intermédiaire.svg)
%%[[Explications_table_intermédiaire|🖋 Edit in Excalidraw]]%%

[^1]: Un auteur peut écrire plusieurs livres et un livre peut être écrit par plusieurs auteurs.

[^2]: Certains le font mais je trouve que ça manque de clarté

[^3]: Je sais que j'ai dit que les clés concaténées c'était à éviter, mais les tables intermédiaires sont des cas à part.

[^4]: Dans les tables non-intermédiaire, c'est plutôt rare que la clé primaire soit composée de clé étrangère  (il faudrait même l'éviter).

