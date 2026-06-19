Voici le code de la classe `Calculator`

```python
class Calculator:
	def __init__(self):
		self.result = 0

	def add(self):
		self.result += 1
```
C'est un peu abrupte comme premier contact, mais cela vous donne une bonne idée de comment on écrit une classe en Python.

### Décomposition

#### Déclaration de la classe
Comme pour tout ce que l'on veut déclarer en Python (en dans beaucoup de language de programmation), il faut donner un mot clé (comme `def` pour déclarer une fonction). Ce mot clé devrait être simple à retenir car c'est `class`.

Ce mot clé est suivit du nom de la classe, suivit lui aussi du sempiternelle ":"  pour clôturer.
Ce qui donne:
```python
class Calculator:
```
Bien évidemment, tout le code qui concerne la classe sur indenté pour se trouver dans la classe.
#### Méthodes

Comme on l'a dit plus haut, les méthodes sont des fonctions et donc, on va les déclarer comme des fonctions. Ici nous avons deux méthodes `__init__` et `add`.
```python
	class Calculator:
		def __init__(self):
			self.result = 0
```

`__init__` est ce que l'on appelle un constructeur.
Cette méthode un peu particulière sera appelée automatiquement lorsque une instance est crée et comme l'indique son nom, un constructeur est la pour construire la classe.
C'est dans cette méthode que l'on va décrire l'état initiale de l'objet.

Ici, elle crée l'attribut `result` et lui affecte la valeur `0`.

Examinons maintenant l'autre méthode, `add`
```python
	class Calculator:
		
		...
		
		def add(self):
			self.result += 1
```
Contrairement au constructeur cette méthode devra être appelée pour être utilisée (comme le `append` des `list`).

Cette méthode ajoute `1` à l'attribut `result`.

#### Les attributs

Comme en Python on ne doit pas déclarer ses variables avant de les affecter, il en va de même pour les attributs. Donc tout les attributs seront créer dans le constructeur comme on peut le voir ici avec `self.result = 0`.

#### `self`

Vous l'avez remarqué, que ce soit quand on utilise une méthode ou un attribut, il y a un `self` qui est impliqué.

`self` représente l'instance de la classe elle-même (d'où son nom). 

Dans la déclaration d'une méthode, `self` sera **toujours** le première paramètre à être écrit, nous verrons plus loin qu'il sera automatiquement garni par Python.
Comme dans la déclaration de `add`:

```python
		def add(self):
```

Quand dans une méthode on veut faire référence à un attribut de la classe, on tu utilisera `self`. par exemple dans `add` quand ont veut incrémenter la variable `result` de `1`, on écrira:

```python
			self.result += 1
```

> [!example] Particularité de Python
> Cette façon de faire référence à l'instance de la classe dans les méthodes est relation particulié à Python, dans d'autre language ce genre de mécanisme existe, mais il est plus discret. 
## Faire appel à un classe

```python
calc = Calculator()
```

Ce code crée affecte la variable  `calc` avec une instance de la classe `Calculator`.

Quand on veut créer l'instance d'une classe, écrire le nom de la classe suivit de parenthèses (qui ne sont pas obliger d'être vide, on y revient dans un instant). 

A partir ce moment là, la variable contient une instance de la classe en question et on peut donc utilisé ses méthode et ses attributs à l'envie.

```python
calc = Calculator()
calc.add()
print(calc.result)
```
Ici, ce code créer une instance de `Calculator`, 
Ensuit il utilise la méthode `add` ce qui a pour effet d'incrémenter l'attribut `result` de  `1`.
Et enfin, on affiche l'attribut `result` à l'aide de la fonction `print`

## Paramètres supplémentaires

On peut bien évidemment mettre des paramètres en plus du `self` dans un méthode, par exemple, si on voulait faire en sorte que `add` s'incrémente d'un nombre passé en argument, il suffirait de réécrire la méthode comme suit.

```python
	class Calculator:
		
		...
		
		def add(self, value):
			self.result += value
```
et lorsqu'on voudrait appeler `add`, on devrait passer une valeur en argument.

```python
calc = Calculator()
calc.add(5)
print(calc.result)
```
Dans le même ordre d'idée, on pourrait vouloir que nos instances de la classe `Calculator` commencent avec une valeur paramétrable pour `result`. 
Pour se faire, on va réécrire le constructeur pour lui ajouter un paramètre afin de pouvoir transmettre cette valeur au instance de la classe.

```python
	class Calculator:
		
		def __init__(self, initial_value):
			self.result += initial_value
```

Et donc lorsqu'on voudra crée un instance de la classe `Calculator`, on donnera les arguments lors de la création de l'instance, comme ceci.

```python
calc = Calculator(6)
```
Dans ce cas-ci, la valeur de `result` à la création de l'instance sera de `6`.


Fort de toute ces connaissances, on vous propose un [[Exercice - Classe|petit exercice]].