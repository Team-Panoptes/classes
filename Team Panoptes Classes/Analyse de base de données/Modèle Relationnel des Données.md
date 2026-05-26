Le **MRD** ou modèle relationnel de données est une version textuelle du MLD. Il s'agit d'une "fausse" étape, car le MRD n'est pas un schéma à proprement parler. Souvent, on parle plutôt de MLD textuel pour désigner la même chose.

Le MRD fait office d'inventaire de table, c'est une autre façon d'aborder le MLD.

Vous devez écrire une ligne par table. La ligne commence par le nom de la table puis entre parenthèse tout les champs de la table.
	- Le ou les champs de la clé primaire sont souligné et les clés étrangère sont précédées d'un `#`. Comme pour le MLD

![[MLD to MRD - Part A.excalidraw.svg]]
%%[[MLD to MRD - Part A.excalidraw|🖋 Edit in Excalidraw]]%%
![[MLD to MRD - Part B.excalidraw.svg]]
%%[[MLD to MRD - Part B.excalidraw.md|🖋 Edit in Excalidraw]]%%
Ce modelé ressemble à une ébauche de ce que sera le SQL qui créera les tables suite à notre analyse.