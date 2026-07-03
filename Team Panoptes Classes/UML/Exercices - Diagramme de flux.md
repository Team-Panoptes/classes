## 1. Ecrivez le diagramme de flux des code Python suivant

```python
number = int(input("Donner un nombre: "))
gr = number
lw = number

answer = input("Voulez-vous continuer (o/n): ")

while answer not in ('o', 'n'):
	answer = input("Voulez-vous continuer (o/n): ")

stop = answer == "n"

while not stop:
	number = int(input("Donner un nombre: "))
	
	if number > gr:
		gr = number
	elif number < lw:
		lw = number
		
	answer = input("Voulez-vous continuer (o/n): ")

	while answer not in ('o', 'n'):
		answer = input("Voulez-vous continuer (o/n): ")
	
	stop = answer == "n"

print(f"Le plus grand nombre entré est {gr}")
print(f"Le plus petit nombre entré est {lw}")
```

## 2. Traduisez ce diagramme de flux en code Python

```mermaid
flowchart TB
S((start))-->
Prompt@{ shape: curv-trap, label: "Essayer d'atteindre une valeur égale à 19, 20 ou 21." }
Prompt ~~~ Comment@{ shape: comment, label: "random_number renvoie un nombre aléatoire entre les deux nombres passés en arguments"}
Prompt --> InitValue["value = random_number(1, 10)"]
InitValue --> InitAnswer["answer = 'o'"]
InitAnswer --> While{{"answer == 'o' and value <= 21"}} 
While -- vrai --> Print@{ shape: curv-trap, label: "'Value: ' + value"}
Print --> AskAnswer@{ shape: curv-trap, label: "Voulez-vous continuer (o/n): "}
AskAnswer --> GetAnswer[/"→ answer "/] --> NotGood{{"answer not in ('o', 'n')"}}
NotGood -- vrai --> AskAnswer
NotGood -- faux --> Continue{{answer == 'o'}}
Continue -- Vrai --> AddValue["value += random_number(1, 10)"]
AddValue --> While
Continue -- faux --> While
While -- faux --> Print2@{ shape: curv-trap, label: "'Value: ' + value"}
Print2 --> CheckValue{{"value >= 19 and value <= 21"}}
CheckValue -- vrai --> Win@{ shape: curv-trap, label: "Gagné!"} --> E((end))
CheckValue -- faux --> Lose@{ shape: curv-trap, label: "Perdu..."} --> E((end))
```

## 3. Ecrivez le diagramme de flux correspondant à l'énoncé suivant:

Faites un programme pour encoder les scores d'un groupe.

Le programme demande à l'utilisateur un prénom suivit d'une demande de score.

Ensuite le programme demande à l'utilisateur si il veut continuer.

Si celui-ci dit oui il recommence à demander un nom et un score et ainsi de suite jusqu'à ce que l'utilisateur décide de dire "non" (ou "n").

Le programme donnera le nom la personne avec le meilleur score (si ex-æquo il donnera la dernière encodée avec ce score).
Enfin le programme donnera la moyenne des scores encodé.