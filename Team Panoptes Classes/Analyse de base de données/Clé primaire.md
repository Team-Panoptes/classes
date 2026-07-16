---
publish: true
---
La clé primaire est l'un des piliers des bases de données.


Chaque entité doit contenir une données (ou un groupe de données) qui permet de l'identifier de manière unique. C'est à dire que si j'ai cette données, je sais identifié qu'elle est le membre de l'entité lié à cette données.

Par exemple

Si les données de l’entité sont:
- numéro d'abonné
- nom
- prénom
- date de naissance

Le nom ou le prénom ne sont pas unique,  il peut y avoir plusieurs personne qui porte le même prénom ou le même nom (voir même les deux).

Le numéro d'abonné lui, est unique, car il n'y en aura qu'un par abonné, c'est donc un bon client pour la clé primaire.

La clé primaire est une manière de s'assurer que si l'on a cette clé, on ne trouvera à coup-sûr qu'un seul membre de l'entité. Derrière le numéro d'abonné "04589" il n'y a que "Raoul Gominont né le 23/08/1946"

## Clé primaire concaténée

Si je ne suis pas arrivé à trouvé une données qui me servira de clé primaire, je dois chercher un ensemble de données qui ensemble seront unique pour l'entité.

Par exemple si les données d'une entité qui contient les données pour un emprunt dans une ludothèque :
- numéro d'abonné
- jeu loué
- date de location
- date de remise
- caution versée

Ici il n'y a aucune données qui a elle seule permet d’identifié à coup sûr l'emprunt. Le numéro d'abonné peut-être lié à plusieurs emprunt, le jeu loué aussi, pareil pour les dates et la caution.

Mais si je groupe, le **numéro d'abonné**, le **jeu loué** et la **date de location**, j'ai un groupe qui ensemble désigne un seul membre de mon entité, car un abonné ne peut loué qu'une seul fois par jour.

## Création de clé primaire

Si je ne trouve pas de clé primaire, unique ou concaténée, dans ce cas je vais devoir en créer une.

Dans le cas des données de mon inscription au club de basket aucune de ses données ne sont unique, de même qu'aucun groupe de données ne permet d'identifié à coup sûr une personne inscrite:
- nom
- prénom
- date de Naissance
- rue
- code postal
- localité
- téléphone
- email
- nom de la personne à contacter
- prénom de la personne à contacter
- téléphone de la personne à contacter

Dans ce cas là, on créer nous même une données unique, un identifiant qui va nous servir de clé primaire.
	 
- **ID membre**
- nom
- prénom
- date de Naissance
- rue
- code postal
- localité
- téléphone
- email
- nom de la personne à contacter
- prénom de la personne à contacter
- téléphone de la personne à contacter

Cette pratique peut paraître bizarre, car on crée une données de toute pièce, mais on verra plus tard dans le cours qu'en faite c'est bien plus courant qu'il n'y parait. 