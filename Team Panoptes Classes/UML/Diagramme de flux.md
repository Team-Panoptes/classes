Flow chart en anglais.

Le diagramme de flux n'est pas vraiment un diagramme UML à proprement, mais il en a inspiré quelques-uns et même si ce n'est pas de l'UML, il est important de savoir le lire.

## Début et fin

Un programme toujours un début et une fin qui sont représenté par deux cercles (un pour chaque extrémité du programme).

```mermaid
flowchart LR
    START((start))-->END((end))
    
```
## Instruction de sortie

Une instruction de sortie est représenté par cette forme étrange censé représenté un [tube cathodique.](https://fr.wikipedia.org/wiki/Tube_cathodique)

```mermaid
flowchart LR
    START((start))-->HW@{ shape: curv-trap, label: "Hello, World!" }-->END((end))
    
```

*Vous noterez aussi qu'on vient de faire le Hello World en diagramme de flux*

## Instruction d'entrée

Ce parallélogramme représente une instruction d'entrée. C'est censé représenté un clavier (nous verrons bientôt que le rectangle était déjà pris).
Si on veut exprimer que l'entrée est stockée dans une variable, celle-ci sera  exprimée à l'aide d'une flêche suivit du nom de la variable.

```mermaid
flowchart LR
    A@{ shape: lean-r, label: "→ name" }
    
```
On peut aussi être plus descriptif

```mermaid
flowchart LR
    A@{ shape: lean-r, label: "Récupération du nom de la personne" }
    
```


> [!Attention] Erreur récurante
> Il est fréquent qu'on oublie qu'une instruction d'entrée doit souvent ― tout le temps ― être précédée d'une instruction de sortie, afin de préciser à l'utilisateur ce qu'on attends de lui.
> En Python, `input` fait les deux en une fonction.
> 
>**Python:**
> ```python
> name = input("Quel est ton nom? )
> ``` 
> 
> **Diagramme de flux:**
> ```mermaid
> flowchart LR
> START((start))-->AskName@{ shape: curv-trap, label: "Quel est ton nom? " }
> AskName --> GetName@{ shape: lean-r, label: "→ name" }
>GetName-->END((end))
> ```


## Instruction

Une instruction classique est représentée par un rectangle

```mermaid
flowchart
A[a = a + 1]
```

```mermaid
flowchart TB
START((start))-->AskNumber@{ shape: curv-trap, label: "Donne un nombre: " }
AskNumber --> GetNumber@{ shape: lean-r, label: "→ number" }
GetNumber-->A[number =  number * 2]-->END((end))
```

## Décision

Les décisions sont représentées par un losange.

```mermaid
flowchart
test{age > 18}
```

On peut les utiliser pour exprimer un `if`. Dans le code suivant par exemple.

```python
age = int(input("Quel est ton âge? "))
if age >= 18:
	print("Bienvenue en classe".)
else:
	print("Il n'y pas de cours pour toi.")
```

```mermaid
flowchart TB
START((start))-->AskAge@{ shape: curv-trap, label: "Quel est ton age? " }
AskAge --> GetAge@{ shape: lean-r, label: "→ age" }
GetAge-->TestAge{age >= 18}
TestAge -- oui -->  Yes@{ shape: curv-trap, label: "Bienvenue en classe." }
TestAge -- non -->  No@{ shape: curv-trap, label: "Il n'y pas de cours pour toi." }
Yes-->END((end))
No-->END
```

Les décisions peuvent aussi être utilisée pour exprimé un `while`, Comme dans  le code ci dessus.

```python
number = int(input("Donne un chiffre entre 1 et 10: ))

while number < 1 or number > 10:
	number = int(input("Donne un chiffre entre 1 et 10: ))
```

```mermaid
flowchart TB
START((start))-->AskNumber@{ shape: curv-trap, label: "Donne un chiffre entre 1 et 10: " }
AskNumber --> GetNumber@{ shape: lean-r, label: "→ number" }
GetNumber-->TestNumber{number < 1 or number > 10}
TestNumber -- oui -->  AskNumber
TestNumber -- non -->  END((end))
```
 
> [!NOTE] Ne pas en faire de trop
> Noter que dans un diagramme de flux, on ne va pas noter forcément la moindre opération, par exemple ici, on a pas spécifié la conversion (`int(...)`) car cela alourdirait le diagramme pour rien.


> [!NOTE] Décision plus lisible
> Les décisions peuvent être représentée par des hexagone allongé si cela rend le diagramme plus lisible
> 
> ```mermaid
flowchart TB
START((start))-->AskNumber@{ shape: curv-trap, label: "Donne un chiffre entre 1 et 10: " }
AskNumber --> GetNumber@{ shape: lean-r, label: "→ number" }
GetNumber-->TestNumber{{number < 1 or number > 10}}
TestNumber -- oui -->  AskNumber
TestNumber -- non -->  END((end))
```