Le **MLD** ou modèle logique de données est un schéma basé directement sur le [[Modèle Conceptuel des Données|MCD]]. Il ajoute des détails techniques tels que :
- Les tables et leurs colonnes (sans les types)
- Les [[Clé Primaire - MLD|clés primaires]](dans la modélisation "by the book" le choix de la clé primaire se fait ici, mais je trouve que c'est un concept tellement fondateur qu'il ne faut pas attendre le MLD pour y penser).
- Les [[Clé étrangère|clés étrangères]] (pour assurer la liaison entre tables)
- Les [[Table Intermédiaire|tables intermédiaires]] (pour modéliser les relation N à N)

Dans le MLD, nous ne parlerons plus d'entité, mais de **tables**, et nous ne parlerons plus d'attribut, mais de **champs**. 
Vous allez voir c'est globalement la même chose.

![[MCD to MLD.excalidraw.svg]]
%%[[MCD to MLD.excalidraw.md|🖋 Edit in Excalidraw]]%%