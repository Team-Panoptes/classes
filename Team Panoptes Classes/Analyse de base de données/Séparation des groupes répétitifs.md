Il y a plusieurs étapes pour effectuer la séparation en entité. Il faut les suivre dans l'ordre pour être sûr de ne rien manquer.

## Qu'est-ce qu'un groupes répétitifs
Un groupe répétitifs est un groupe de données qui peux se répéter plusieurs fois dans un l'ensemble de nos données.

Le cas d'école classique est la facture.

![[facture.excalidraw.svg]]
%%[[facture.excalidraw.md|🖋 Edit in Excalidraw]]%%

Pour ce document, le dictionnaire de données est assez simple:
- facture id [^1]
- date
- lieu
- article
- quantité
- prix unitaire [^2]

Sur la facture nous trouvons plusieurs lignes de facture chacune contenant un article vendu, la quantité et le prix à l'unité 

L'ensemble de ces données sont donc un groupe répétitif.

Ce groupe répétitif donc donc sortir de l'entité principale

On a donc d'un coté l'entité "Facture" avec
- facture id
- date
- lieu

et de l'autre:
- article
- quantité
- prix unitaire 

Dans ce groupe répétitif , il y a deux type de données, les données qui vont formé une nouvelles entité et les données qui appartiennent à la relation.

Dans notre cas l'entité qui va être créée est "Article" la données qui lui est lié est le prix unitaire (car celui-ci ne changera pas pour un même article).

Une fois qu'on a isolé les données qui vont formé l'entité, il faut désigner une clé primaire.

Donc ce cas-ci aucune des données n'est une candidate valable, donc on va en créer "article id".

Donc l'article id,  le nom de l'article  et le prix unitaire vont former une entité et elle sera en relation avec l'entité "Facture"

![[Analyse facture 1.excalidraw.svg]]
%%[[Analyse facture 1.excalidraw.md|🖋 Edit in Excalidraw]]%%

Pour schématiser une entité on dessine un rectangle avec une en-tête pour le nom de l'entité.
Dans le rectangle on notera les différentes données.  Les données sont nommées attribut quand elles sont dans une entités.

Noté que la clé primaire est soulignée.

Enfin les relations entre les données sont représenté par une ligne qui part d'une entité vers une autre. De plus un ovale décrit la relation en utilisant un verbe qui représente la relation.

Ici une Facture **contient** des articles et des articles sont **contenu** dans une facture. On va donc mettre le verbe à l'infinitif **contenir** dans la relation.

Il reste la quantité à gérer. Cette attribut n'appartient ni à Facture ni à Article, elle appartient à la relation. Cette donnée donc on va l'inscrire dans la relation elle-même.

![[Analyse facture 2.excalidraw.svg]]
%%[[Analyse facture 2.excalidraw.md|🖋 Edit in Excalidraw]]%%

### Groupes répétitifs cachés

Parfois, comme pour les factures, les groupes répétitifs sont évident, parfois il ne ressorte pas directement.

Imaginons un formulaire pour louer des emplacements de parking dans un garage.
Dans ce garage les locataires n'ont droit d'inscrire que deux voiture n'avez droit qu'à deux voitures.

![[Formulaire garage.excalidraw.svg]]
%%[[Formulaire garage.excalidraw.md|🖋 Edit in Excalidraw]]%%

Dans ce cas, les données pour la voiture 1 et la voiture 2 sont considérées comme répétitives (il y en a deux, exactement les mêmes donc elles se répètent)

Et donc nous obtiendront un schéma de ce type.

![[Analyse garage.excalidraw.svg]]
%%[[Analyse garage.excalidraw.md|🖋 Edit in Excalidraw]]%%

Noté que dans ce cas aucun attribut n'est resté lié à la relation car tous appartenait à l'entité voiture.

## Groupe répétitif en cascade

Chaque nouvelle entité créer doit refaire l'analyse pour vérifier si il n'y a pas de groupe répétitif dans la nouvelle entité.

Il est possible d'avoir des groupes répétitifs à l'intérieur de groupes répétitifs.


[^1]: Comme il n'y avait pas de candidate valable pour faire une bonne clé primaire, une clé primaire a donc été crée.

[^2]: le prix totale étant une valeur calculée via le prix à l'unité et la quantité.
