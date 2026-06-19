Si on devait à nouveau vulgariser, on peut dire qu'une classe est un type d'objet.

```python
LIMIT_AGE = 18


name = input("Quel est ton nom: ")

age = input("Quel est ton âges: ")
age = int(age)

if age < LIMIT_AGE:
	print(f"Désolé, {name}, tu n'as pas l'age requit.")
else:
	print(f"Bienvenue, {name}.")
```

Dans ce code, la classe de `name` est `str` et celle de `age` (après le casting) est `int`, pareil pour `LIMIT_AGE`.

## Définition

Une classe est l' ensemble des méthodes des attributs qui sont communs à tout les objets de même type.

Par exemple tout les objets de la classe `list` ont une méthode `append`. 


Dans une classe on va déclarer, d'une part, des attributs représentant l'état de l'objet qu'elle concerne et, d'autre part, des méthodes représentant leur comportement.

Une classe représente donc une catégorie d'objets. On peut la comparer à un moule ou une usine à partir de laquelle il est possible de créer des objets.

On parle d'un objet comme en tant qu'instance d'une classe.

*source: [Wikipedia](https://fr.wikipedia.org/wiki/Classe_(informatique))*


## Classes et instances

Quand l'on va écrire nos premières classe, on va devoir programmer tout ce que les instances de cette classes seront et tout ce qu'il pourront faire.

Une des métaphore possible est de considéré la classe comme un plan de montage et l'instance de la classe comme la création qui résulte d'avoir suivi le plan de montage.

On peut construire autant d'objet que l'on veut en suivant le plan de montage et chaque objet à une vie indépendante l'un de l'autre, mais on en commun toute les caractéristiques et les capacités qui sont prévue pour les objets de leur type.


Pour ceux qui ont fait du jeu de rôle, Dungeons & Dragons par exemple. Souvent dans un jeu de rôles (ou même dans certains jeu vidéo) on va créer un personnage en choisissant une classe.
La classe de jeu de rôle, va déterminer ce que le personnage est capable de faire et quels seront ses attributs (un peu comme sa cousine, pour la programmation).

Chaque personnage d'une même classe est différent, pourtant il a les même caractéristiques et les même possibilités.


## Attribut

Comme on l'a dit plus haut, une classe à des caractéristiques, elles sont représentées des d'autre valeur.

Ces valeurs sont nommées **attributs**.

En d'autres termes, un attribut c'est une variable de classe.

## Méthodes

Une méthode décrit le comportement d'une classe.

En gros, une méthode c'est une fonction de classe.

Plus précisément une méthode est une fonction qui ne concerne que la classe et qui n'affecte que l'instance de la classe lorsqu'elle est appelée.

On peut voir les méthodes comme des actions actives ou passives, disponibles pour une classe.

```python
numbers = []
even_numbers = []

number = input("Donne un nombre: ")
number = int(number)

while number != 0:
	numbers.append(number)

	if number % 2 == 0:
		even_numbers.append(number)
		
	number = input("Donne un nombre: ")
	number = int(number)
		 
```
Ici, la méthode `append` est une des méthode de la class `list`. Quand on joue cette méthode pour `numbers`, on affecte uniquement le contenu de `numbers` et cela n'affecte pas l'autre instance (`even_numbers`).


Maintenant que l'on sait tout ça, mettons le en application et apprenons à [[Ecrire une classe|écrire une classe]].
