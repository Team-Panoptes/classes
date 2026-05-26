Les clés étrangères sont des copies de clé primaire qui vont symbolisé la relation entre deux tables.

## Relations

Dans le modèle logique des données, il n'y a pas de cardinalité de N à N, nous aborderons ce sujet avec plus de détails dans le chapitre sur les [[Table Intermédiaire|tables intermédiaires]].

Donc nous aurons toujours des relations de 1 (ou 0) à N.

Prenons deux tables bien connues:

![[Analyse personne - MLD - 1.excalidraw.svg]]
%%[[Analyse personne - MLD - 1.excalidraw|🖋 Edit in Excalidraw]]%%

Dans le MLD, les relations se simplifie pour ne laisser que la ligne entre les deux tables. ^c0c90a

![[Analyse personne - MLD - 2.excalidraw.svg]]
%%[[Analyse personne - MLD - 2.excalidraw.md|🖋 Edit in Excalidraw]]%%

Certains aiment bien garder une trace de la relation sur forme d'un petit texte, mais personnellement je ne le fais que très rarement  (lorsque la relation n'est pas du tout claire, et même dans ce cas, on peut toujours faire référence au MCD pour clarifier).

![[Analyse personne - MLD - 2 - bis.excalidraw.svg]]
%%[[Analyse personne - MLD - 2 - bis.excalidraw.md|🖋 Edit in Excalidraw]]%%

## Création de la clé étrangère

On a ici deux tables, une table `Personne` et une table `Localite`. 

Dans une base de données,  les relations sont toujours "mère-fille". La "mère" sera la table qui contiendra les données.
Pour la reconnaître c'est facile c'est celle qui se trouve du coté "N" des cardinalité.

Dans notre exemple c'est la table `Localite` qui est la table "mère" car elle une cardinalité `1, N` avec la table `Personne`.

Et donc la table "fille" est la table `Personne`. 

La "mère" va transmettre une copie de sa clé primaire à sa fille, c'est cette clé qu'on appellera clé étrangère.

Le champ qui en résultera sera noté avec un `#` devant pour qu'on sache que c'est une clé étrangère [^1]

![[Analyse personne - MLD - 3.excalidraw.svg]]
%%[[Analyse personne - MLD - 3.excalidraw.md|🖋 Edit in Excalidraw]]%%

Par convention, la clé étrangère peut s'abréger en `FK` (Primary Key) ou `XID` (le X est our Xeno (étrangé en grecque) et le ID est pour Identifier).
J'ai une petite préférence pour `XID` mais c'est personnel, libre à vous de choisir `FK`. 
On retrouvera souvent cette abréviation dans le nom des champs qui sont des clés étrangères.

La clé étrangère garantit l'intégrité référentielle entre deux tables. Ce qui veut dire qu'il ne peut exister de valeur dans le champ `localite_xid` de `Personne` si il n'y a pas au préalable une valeur correspondant dans `localite_id` de `Localite`.

Si on imagine les données dans nos tables

**Table `Localite`**

| localite_id | nom        | code postal |
| ----------- | ---------- | ----------- |
| 1           | Schaerbeek | 1030        |
| 2           | Bruxelles  | 1000        |
| 3           | Wavre      | 1300        |

**Table `Personne`**

| personne_id | nom            | prenom          | rue                       | numéro    | localite_xid |
| ----------- | -------------- | --------------- | ------------------------- | --------- | ------------ |
| 1           | Lenoir         | Nicole          | rue Gaucheret             | 88-90     | 1            |
| 2           | Stassin        | Thomas          | rue d'Alost               | 7-11      | 2            |
| 3           | Tesla          | Nikola          | boulevard Simon Bolivar   | 36        | 2            |
| 4           | Smart          | Sam             | rue des brasseries        | 12        | 3            |
| **~~5~~**   | ~~**Carter**~~ | ~~**Samanta**~~ | ~~**avenue du chevron**~~ | ~~**7**~~ | ~~**6**~~    |
La dernière ligne ne pourrait pas exister car le champ `localite_xid` contient une donnée qui n'a pas d'équivalent dans le champ `localite_id` de la table `Personne`.

Cette impossibilité d'exister est ce qu'on appelle une **contrainte d'intégrité** et elle est garantie par l'existence de la clé étrangère.

[^1]: le `#` ne fait pas partie du nom de l'attribut c'est juste un moyen visuel de repérer les clés étrangères.
