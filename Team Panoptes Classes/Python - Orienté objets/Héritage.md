L'un des principes fondateurs de l'orienté objet est l'héritage. Ce mécanisme permet à une  classe de récupérer le comportement d’une autre classe.

De ce manière la classe "parent" transmettra à la classe "enfant" une série de méthodes et d'attributs.

Ce mécanisme sera très utile lorsqu'on veut qu'on a besoin de classe avec des comportement similaire. En utilisant l'héritage on fera en sorte de ne pas devoir programmer plusieurs fois les mécanisme de base, et l'on pourra se concentrer sur les mécanismes spécifiques de chaque classe.

## Mise en contexte

Je voudrais bien coder deux classes, une classe `Bike` qui simulera le comportement d'un vélo et une autre classe `car` qui elle simulera le comportement d'une voiture.

### Classe `Bike`

Le vélo a une vitesse de `15`.

La classe mémorisera la distance totale parcourue par le vélo,  cette distance est de `0` initialement.

La classe aura une méthode `ride` qui recevra une durée en paramètre et qui calculera la distance parcourue et ajoutera cette distance à la distance total parcourue du vélo

Ce qui donne en Python:

```python
class Bike:

	def __init__(self):
		self.speed = 15
		self.distance = 0
	
	def ride(self, duration):
		travel = duration * self.speed
		self.distance += travel
```

### Classe `Car`

La voiture a une vitesse de `120`.

La classe mémorisera la distance totale parcourue par la voiture,  cette distance est de `0` initialement.

La classe aura une méthode `ride` qui recevra une durée en paramètre et qui calculera la distance parcourue et ajoutera cette distance à la distance total parcourue de la voiture.

Ce qui donne en Python:

```python
class Car:

	def __init__(self):
		self.speed = 120
		self.distance = 0
	
	def ride(self, duration):
		travel = duration * self.speed
		self.distance += travel
```

## Programmer de l'héritage

Nous sommes tous d’accord pour dire que les deux classes sont super similaires.
Il serait bon de pouvoir un peu agréger tout ça, non?

La première étape va être de repérer le comportement commun et le comportement divergent de chaque classes.

Dans ce cas si, seul la vitesse change entre les deux classes. On va donc écrire une classe avec une vitesse paramétrable.

```python
class Vehicle:
	def __init__(self, speed):
		self.speed = speed
		self.distance = 0

def ride(self, duration):
	travel = duration * self.speed
	self.distance += travel
```

Techniquement, si je veux instancier l'équivalent d'un vélo, je peux écrire ceci

```python
bike = Bike(15)
```
Seulement ce n'est pas pratique, parce que ça demande au programmeur de connaitre la vitesse à passer pour chaque paramètre. Initialement il n'avait pas à le faire. 

Imaginer qu'on ait plus d'un paramètre à rentrer et plus de deux classes concernées, ça serait vite le bordel.

Donc on va recréer notre classe `Bike` en utilisant l'héritage.
```python

class Bike(Vehicle):

	def __init__(self)
	super().__init__(15)
```
### Décomposition

La première chose que l'on constate c'est apparition de parenthèses dans la  déclaration de la classe et entre ces parenthèses, la classe "parent".

#### Déclaration
```python
class Bike(vehicle):
```
Ce code déclare que `Bike` est une "enfant" de `Vehicle` et qu'il héritera de toute les caractéristique de celle-ci.

#### Utilisation de la classe parent

Dans `__init__`, on fait appelle à la une fonction `super` avant d'invoquer un constructeur.

`super` est une fonction particulière qui fait appel à la classe `parent`. Quand on écrit `super().__init__(15)`, c'est comme si je demandait à jouer le constructeur de `Vehicle` en lui passant `15` en paramètre.

![[Explication - Super .22.30.excalidraw.svg]]
%%[[Explication - Super .22.30.excalidraw|🖋 Edit in Excalidraw]]%%

En gros en utilisant `super().__init__(15)`, on appelle le constructeur du parent avec le paramètre 15. 
Ce qui aura pour effet de créer l’attribut `speed` avec `15` dedans et l’attribut `distance` avec la valeur `0`.


En guise d'entrainement, réécrivez la classe `Car` de la même manière.

## Redéfinition

La redéfinition est le mécanisme qui permet de réécrire une partie ou toute une méthode ce qui fera en sorte de spécifié le comportement de celle-ci.

Pour pourvoir expliquer ce mécanisme, on va ajouter deux nouveaux attribut à notre voiture.

La classe `Car` aura maintenant un attribut qui représentera la quantité de carburant dans le véhicule, celui-ci se nommera `fuel`.

De plus la voiture aura un attribut pour représenter sa consommation qui aura une valeur de `0.05` et qui se nommera `consumption`.

La classe `Car` sera donc codée comme suit.

```python
class Car(Vehicle):

	def __init__(self):
		super().__init__(100)
		self.fuel = 100
		self.consumption = 0.05
```
Les deux nouveaux attribut étant ajouter suite à l'appel du constructeur de l'ancêtre. Ce qui fait que ces deux attributs sont spécifique à `Car`.[^1]

Ce qu'on vient de faire au constructeur de la classe `Car` est de la redéfinition. On a spécifié le comportement du constructeur en y ajoutant deux attributs spécifique à cette classe.

Maintenant qu'on a fait ça, il faudrait faire en sorte que la classe prenne en compte la consommation de carburant quand elle roule.
Une fois encore on va donc devoir redéfinir la méthode.

```python
class Car(Vehicle):

	def __init__(self):
		super().__init__(100)
		self.fuel = 100
		self.consumption = 0.05

	def ride(self, duration):
		super().ride(duration)
		fuel_consumed = self.consumption * duration * self.speed
		self.fuel -= fuel_consumed
```
On remarque qu'on a utilisé le `super` pour faire appelle à la méthode `ride` de l'ancêtre. De cette manière la distance parcourue sera ajoutée à l'attribut `total_distance`.

Ensuite on calcule le carburant consommé et on le retire à l'attribut `fuel`. Ce comportement est, une fois encore, spécifique à la classe `Car`.

Il n'est pas toujours obliger de garder le comportement du parent et l'on a tout à fait le droit de réécrire le code d'une méthode entièrerement, comme ici par exemple:

```python
class Car(Vehicle):

	def __init__(self):
		super().__init__(100)
		self.fuel = 100
		self.consumption = 0.05

	def ride(self, duration):
		travel = duration * self.speed
		travel_max = self.fuel / self.consumption
		travel = min(travel, travel_max)
		self.distance += travel
		self.fuel -= travel * self.consumption
```

Si on  résume, la **redéfinition** c'est un mécanisme qui nous permet de coder le comportement générique dans une classe parent et le code spécifique dans les enfants.

Aussi, en plus de la redéfinition, il est totalement autorisé d'ajouter des méthodes supplémentaires à un enfant.
```python

class Car(Vehicle):

	def __init__(self):
		super().__init__(100)
		self.fuel = 100
		self.consumption = 0.05

	def ride(self, duration):
		super().ride(duration)
		fuel_consumed = self.consumption * duration * self.speed
		self.fuel -= fuel_consumed
  
	def fill_tank(self, fuel_volume):
		self.fuel += fuel_volume
```

Maintenant que vous avez appris ce qu'est l'héritage, voici quelques [[Exercices - Héritages|exercices]] pour vous entraînez.

[^1]: Un vélo (classe `Bike`) n'aura pas de carburant, ni de consommation, ce qui est logique.
