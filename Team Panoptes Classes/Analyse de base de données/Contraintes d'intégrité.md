Pour être sûr que la base de données est remplie comme elle le devrait, on dispose de contraintes qui vont s'assurer de l'intégrité des données.

Voici trois des principales contraintes d'intégrité

## Non-Null
Cette contrainte empêche un champ d'être null. Vous vous souvenez du dictionnaire de données et des attributs obligatoires? Et bien c'est le moment de le  re-sortir, car c'est maintenant que ça va servir.

## Unique
La contrainte d'unicité permet de rendre un champ ou un group de champ unique pour la table.

Par exemple. Dans la table `Livre` le champ `isbn` n'est pas forcément la clé primaire, par contre vous pouvez être certain qu'il est unique pour chaque livre, on y appliquera donc une contrainte d'unicité d'unicité.

Noté que la clé primaire a aussi une contrainte d'unicité (ce qui est logique en soit)

## Clé étrangère

On a déjà abordé les [[Clé étrangère|clés étrangères quand on a parlé du MLD]], mais un petit rappel ne fait pas de mal. 
Une clé étrangère est une contrainte lié à un champ (ou un group de champ) qui va contraindre le ou les valeurs de ses champs à correspondre à la clé primaire d'une autre table.