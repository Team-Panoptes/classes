---
publish: true
---
Le dictionnaire de données est un document utilisé pour lister toutes les informations nécessaires à stocker dans la base de données. 

Ces données sont obtenues par l'analyse du besoin de client, de la documentation existante ou via les mock-up fait au préalable.

Le dictionnaire de données doit être simple et compréhensible pour tous, en évitant les détails techniques. Si possible, Il doit être validé par le client, qui doit donc être en mesure de comprendre les informations stockées dans la base de données.

Commençons par un cas simple, imaginons qu'on nous demande d'informatisé le formulaire d'un club de basket.

![[club de basket.jpg]]

On va d'abord repérer toutes les données.
- nom
- prénom
- date de naissance
- adresse
- téléphone
- mail
- personne à contacter
- téléphone de la personne à contacter

Ensuite on va rationaliser certaine données. Par exemple l'adresse peut être décomposée en rue, code postal et localité. Ensuite la personne à contacté à surement un nom et un prénom.

- nom
- prénom
- date de Naissance
- **rue**
- **code postal**
- **localité**
- téléphone
- email
- **nom de la personne à contacter**
- **prénom de la personne à contacter**
- téléphone de la personne à contacter

Faire un dictionnaire de données est simple et demande toujours du bon sens. N'oubliez pas de demander une validation à votre client le cas échéant car il est important de ne rien avoir omis.

### Valeur calculée

Une fois que vous avez terminé le dictionnaire de données, il est important de retiré toute les valeurs calculées.

Par exemple, imaginons que notre client pour le club de basket, nous demande de demandé aussi l'âge de l'enfant dans le formulaire.


L'âge est une valeur qui peut se calculer  partir de la date de naissance et de la date du jour, donc cette valeur ne doit pas encombré ma base de données car elle peut être retrouvé à tout moment. Cette donnée est donc une valeur calculées.

De la même manière, si le formulaire demandait le nombre de club de basket fréquenté dans le passé et puis qu'il demandait de les listé les clubs par la suite.

![[âge dans le formulaire.excalidraw.svg]]
%%[[âge dans le formulaire.excalidraw.md|🖋 Edit in Excalidraw]]%%

Il est facile pour un programme informatique (un pour un humain d'ailleurs) de compter le nombre de clubs, donc c'est une valeur calculée aussi.

Une fois qu'elles sont identifiées, elle doivent être retirée du dictionnaire de données, car elles sont inutiles et prendront de la place pour rien dans la base de données.

Vous pouvez garder une liste des valeurs calculées sur un document à part afin de vous en souvenir, mais pour l'analyse de base de données, elle ne sont absolument pas utiles.

![[autres clubs.excalidraw.svg]]
%%[[autres clubs.excalidraw.md|🖋 Edit in Excalidraw]]%%
### Valeurs obligatoires

Quelque chose qui va nous aidez par la suite, c'est de repérer les valeurs obligatoire, en gros, les valeurs qui doivent être remplie sans quoi le formulaire n'est pas valide.

Encore une fois tout cela doit être validé par le client.

Par exemple si le client n'a pas forcément besoin du mail, cette valeur n'est donc pas obligatoire.

| Donnée                              | Obligatoire |
| ----------------------------------- | :---------: |
| nom                                 |      x      |
| prénom                              |      x      |
| date de naissance                   |      x      |
| rue                                 |      x      |
| code postal                         |      x      |
| localité                            |      x      |
| téléphone                           |      x      |
| email                               |             |
| nom de la personne à contacter      |      x      |
| prénom de la personne à contacter   |      x      |
| téléphone de la personne à contacte |      x      |
