## 1. Réaliser un diagramme de classes correspondant au spécifications suivantes:

Notre programme aura les classes suivantes:
### Queen
Cette classe à les attributs suivants:
- `alive`: qui est soit vrai, soit faux
- money: qui représente le nombre de pièce d'or possédée.
	     
Cette classe à les fonctions suivantes:
- `command` qui prends un `Farmer` ou `Assassin` ou une `Queen` en argument et qui renvoie vrai ou faux en fonction de si l'ordre a été accompli ou non.
- `sleep` qui ne prends pas d'argument et ne renvoie rien.

### Farmer
Cette classe à les attributs suivants:
- `alive`: qui est soit vrai, soit faux.
- `money`: qui représente le nombre de pièce d'or possédée.

Cette classe à les fonctions suivantes:
- `sleep` qui ne prends pas d'argument et ne renvoie rien.
- `work` qui ne prend pas d'argument et ne renvoie rien.
- `pay`qui prend une reine (`Queen`) en argument et une somme d'argent. Cette fonction ne renvoie rien.

### Assassin:
Cette classe à les attributs suivants:
- `alive`: qui est soit vrai, soit faux
- `allegiance`, qui est une `Queen`.
- money: qui représente le nombre de pièce d'or possédée.
 
Cette classe à les fonctions suivantes:
- `sleep` qui ne prends pas d'argument et ne renvoie rien.
- `kill` qui prend un `Farmer` ou `Assassin` ou une `Queen` en argument, et ne renvoie rien.


## 2. Ecrivez le diagramme de classe qui représante les classes du code suivant:

```python
from random import randint, choice

class Fruit:
    def __init__(self, name, nutritional_value):
        self.name = name
        self.nutritional_value = nutritional_value
    
    def __str__(self):
        return self.name


class Pear(Fruit):
    def __init__(self):
        super().__init__("poire", randint(1, 3))

class Apple(Fruit):
    apple_types = ["Jonagold", "Golden", "Granny Smith"]

    def __init__(self):
        super().__init__(choice(self.apple_types), 2)
    

class Kirby:
    def __init__(self):
        self.hp = 1
        self.weight = 1

    def eat(self, fruit: Fruit):
        print(f"Miam! Kirby mange un.e {fruit}")
        # if isinstance(fruit, Pear):
        #     print("On mange une poire!!!!")
        # else:
        #     print("C'est autre chose...")
        self.hp += fruit.nutritional_value
        self.weight += 1
```
		- 
