Reprenons notre formulaire d'inscription au club de basket.

![[club de basket.jpg]]
 
 On en avait déduit un dictionnaire des données:
 
| Données              | Obligatoire |
| -------------------- | ----------- |
| nom                  | x           |
| prénom               | x           |
| date de naissance    | x           |
| rue                  | x           |
| code postal          | x           |
| localité             | x           |
| téléphone            | x           |
| email                |             |
| nom du contact       | x           |
| prénom du contact    | x           |
| téléphone du contact | x           |
## Extraction des groupes répétitifs

Comme groupe répétitif, il y a les moyens de communication (téléphone et email). On va donc extraire ceux-ci de l'entité principale "Membre"

![[Analyse club de basket 1.excalidraw.svg]]
%%[[Analyse club de basket 1.excalidraw.md|🖋 Edit in Excalidraw]]%%

On pourrait s'étonner que le téléphone du contact n'est pas sorti mais c'est un cas particulier car il n'est pas lié directement au membre mais à la personne de contact. Mais ne vous inquiété pas, il sortira plus tard.

## Extraction des attributs non lié directement à la clé

Il y a deux groupes qui doivent sortir, commençons par les données lié à la localité. C'est un cas d'école, qu'on commence à connaitre.

![[Analyse club de basket 2.excalidraw.svg]]
%%[[Analyse club de basket 2.excalidraw.md|🖋 Edit in Excalidraw]]%%

Ensuite on a la personne de contact. Il est tout a fait possible qu'une personne soit personne de contact pour plusieurs personne donc cela vaut la peine de le sortir.

![[Analyse club de basket 3.excalidraw.svg]]
%%[[Analyse club de basket 3.excalidraw.md|🖋 Edit in Excalidraw]]%%

Mais quand on regarde bien la personne de contact à un téléphone, qui est u moyen de communication. Donc on pourrait le lier à notre table. De cette manière là, si notre client veut aussi le mail de la personne de contact, c'est déjà fait.

![[Analyse club de basket 4.excalidraw.svg]]
%%[[Analyse club de basket 4.excalidraw.md|🖋 Edit in Excalidraw]]%%

## Cardinalité

Ensuite on ajoute les cardinalités

![[Analyse club de basket 5.excalidraw.svg]]
%%[[Analyse club de basket 5.excalidraw.md|🖋 Edit in Excalidraw]]%%

## Agrégation des données

Dans ce cas, on voit que l'"Entité" membre et l'entité "Personne de Contact" sont fort similaire.
Il serait donc possible les fusionnée pour n'en faire même entité. La relation entre les membres et les personnes de contact serait une relation qui pointent sur l'entité elle-même. Ceci est tout a fait possible et apparaît souvent en fin d'analyse.
L'exemple le plus courant est celui des enfants et des parents, on est enfants de quelqu'un e

![[enfant-parent.excalidraw.svg]]
%%[[enfant-parent.excalidraw.md|🖋 Edit in Excalidraw]]%%

Et donc on peut faire de même avec la personne de contact et le membre

![[Analyse club de basket 6.excalidraw.svg]]
%%[[Analyse club de basket 6.excalidraw.md|🖋 Edit in Excalidraw]]%%

De plus, cela permet que les personnes soit membres aussi ce qui est plus que probable.