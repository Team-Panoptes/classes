En Python tout est accessible de base, mais ce n'est pas le comportement adopté par tout les language.

Pour pouvoir comprendre complètement l'orienté objet, il faut aussi qu'on parle d'accessibilité d'attribut et de méthode.

Il y a trois niveaux d'accessibilité:
- publique (`public`)
- protégé (`protected`)
- privé (`private`)


## Public

En Python tout ce que vous écrivez est publique de base. Vous n'avez aucun effort à faire pour qu'une variable où une méthode soit accessible.

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

Dans notre classe `Car` si je veux accéder à l'attribut `fuel` en dehors de la classe, je peux le faire sans rien devoir ajouter. 

```python
car = Car()
car.ride(6)
car.fill_tank(30)
print(car.fuel)
```
On dit que cette attribut est publique car je peux y accéder dans de n'importe qu'elle niveau, que ça soit en dehors, dedans ou via le parent, c'est toujours possible d'y accèder.

En C#, ce n'est pas la même chose, si je veux qu'on puisse accéder à un attribut d'une classe, il faut le préciser

voici la classe car en C#

```csharp
class Car: Vehicle {
	
	public float fuel = 100.0f
	public float consumption = 0.05f

	public Car(): base(100){
		fuel = 100
		consumption = 0.05
	}

	public void Ride(duration){
		base(duration)
		float fuelConsumed = consumption duration speed
		fuel -= fuelConsumed
	}
  
	public FillTank(fuel_volume){
		fuel += fuel_volume
	}
}
```

Si `fuel`, `Ride`ou `FillTank` n'était pas public, je ne pourrais pas exécuter le code suivant car je n'auras pas accès à cet attribut.

```csharp
Car car = new()
car.Ride(6)
car.FillTank(30)
Console.WriteLine($"Fuel: {car.fuel}");
```

## Private

Définir un attribut ou une méthode comme privée fera en sorte que celle-ci ne sera pass accessible en dehors de la classe.

Comme nous l'avons vu, en Python  tout est publique, mais il y a tout de même un mécanisme pour empêcher l'accès à une variable, il faut la nommer en commençant avec 2 underscore.

Par exemple si je voulais faire en sorte que `consumption` soit privé, je l'écrirais `__consumption`

```python
class Car(Vehicle):

	def __init__(self):
		super().__init__(100)
		self.fuel = 100
		self.__consumption = 0.05

	def ride(self, duration):
		super().ride(duration)
		fuel_consumed = self.__consumption * duration * self.speed
		self.fuel -= fuel_consumed
  
	def fill_tank(self, fuel_volume):
		self.fuel += fuel_volume
```

De cette manière le code suivant renverra une erreur, car la variable est inaccessible.

```python
car = Car()
print(car.__consumption)
```

Il en va de même pour les méthodes. Si jamais je veux rendre une méthode privée, je la nomme en commençant par deux underscores. Par exemple avec la méthode `__fill_tank`

```python
class Car(Vehicle):

	def __init__(self):
		super().__init__(100)
		self.fuel = 100
		self.__consumption = 0.05

	def ride(self, duration):
		super().ride(duration)
		fuel_consumed = self.__consumption * duration * self.speed
		self.fuel -= fuel_consumed
  
	def __fill_tank(self, fuel_volume):
		self.fuel += fuel_volume
```

Ce faisant, le code suivant ne fonctionnera pas:
```python
car = Car()
car.__fill_tank(30)
```

> [!Attention] Uniquement via la classe elle-même
> Un attribut privé, n'est accessible que dans la classe elle-même. Ce qui veut dire que les enfants de la classe n'y ont pas accès non-plus.


En C#, comme pour `public`, afin de rendre une variable privée on va le précisé avec le mot clé `private`

```csharp
class Car: Vehicle {
	
	public float fuel = 100.0f
	public private consumption = 0.05f

	public Car(): base(100){
		fuel = 100
		consumption = 0.05
	}

	public void Ride(duration){
		base(duration)
		float fuelConsumed = consumption duration speed
		fuel -= fuelConsumed
	}
  
	private FillTank(fuel_volume){
		fuel += fuel_volume
	}
}
```

Et comme pour Python, les attributs et les méthodes qui sont privées ne sont plus accessible depuis ailleurs que la classe elle-même.