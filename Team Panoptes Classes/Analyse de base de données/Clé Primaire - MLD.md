---
publish: true
---
Bien qu'on se soit déjà penché sur le cas de la clé primaire lors de la réalisation du MCD, il est important de revenir dessus.

Par convention, la clé primaire peut s'abréger en `PK` (Primary Key) ou `ID` (Identifier),.
J'ai une petite préférence pour `ID` mais c'est personnel, libre à vous de choisir `PK`. 
On retrouvera souvent cette abréviation dans le nom des champs qui sont des clés primaires.

La clé primaire est le socle sur lequel la table va basé ses relations avec les tables liées à elle, donc, sans la clé primaire, pas de relation possible.

Il est important de la choisir judicieusement car elle va avoir un rôle clé <insérer rire ici>.

Je sais que j'ai parlé de clé primaire concaténée dans le MCD, mais ce n'est quasi jamais une bonne idée, nous verrons pourquoi quand on évoquera le clé étrangère.