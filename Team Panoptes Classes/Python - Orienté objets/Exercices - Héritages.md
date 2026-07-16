---
publish: true
---
Pour les exercises suivants, on va reprendre notre classe `Véhicle`

```python
class Vehicle:
	def __init__(self, speed):
		self.speed = speed
		self.distance = 0

	def ride(self, duration):
		travel = duration * self.speed
		self.distance += travel
```

## 1. Classe Train

Ecrivez une classe `Train` qui aura une vitesse de `150`. Cette classe héritera de `Vehicle`.

Ajoutez cette classe  un attribut pour simuler le nombre de passager, il sera nommé `passengers`et sera initialisé à 0.

Ajoutez aussi un attribut `max_capacity` qui représentera le nombre de passagers maximum, la valeur de départ de cette attribut sera un paramètre du constructeur de la classe.

Cette classe aura une méthode `take_on_board` qui aura pour paramètre le nombre passagers qui embarqueront dans le train. Si jamais le nombre de passager  dépasse la valeur de `max_capacity`, on réduira cette valeur à la valeur de `max_capacity`.

## 2. Train IC

Ecrivez une classe, `TrainInterCity`qui hérite de `Train`. Cette classe simulera les trains IC.
Un Train IC ne peut prendre qu'un maximum 100 passagers. 

La classe `TrainInterCity` a un nouvel attribut `profit_by_kilometer` qui est à `2.5` et un autre nommé `total_profit` qui lui commence à 0. C'est deux attribut permettront de simuler le profit fait par le train.

Redéfinissez aussi la méthode `ride` pour qu’elle calcule le profit du train à l'aide de la formule suivante:
$$profit = profit\_by\_kilometer \times distance$$
En sachant que la formule de la distance est: 
$$distance = duration \times speed$$
Le profit est ensuite ajout à l'attribut `total_profit`.


## 3. Train de marchandises

Ecrivez une  classe `FreightTrain` qui  simulera les trains de marchandises. Elle prendra 4 passagers maximum.  
  
La classe `FreightTrain` aura un attribut `cargo` pour simuler son chargement, cette attribut commencera à `0.

Cette classe aura une méthode `load_cargo` qui ajoutera la valeur passée via un paramètre à l'attribut `cargo`.
