---
publish: true
---
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
Si on veut exprimer que l'entrée est stockée dans une variable, celle-ci sera  exprimée à l'aide d'une flèche suivit du nom de la variable.

```mermaid
flowchart LR
    A@{ shape: lean-r, label: "→ name" }
    
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
> Les décisions peuvent être représentée par des hexagone allongé si cela rend le diagramme plus lisible.


```mermaid
flowchart TB
START((start))-->AskNumber@{ shape: curv-trap, label: "Donne un chiffre entre 1 et 10: " }
AskNumber --> GetNumber@{ shape: lean-r, label: "→ number" }
GetNumber-->TestNumber{{number < 1 or number > 10}}
TestNumber -- oui -->  AskNumber
TestNumber -- non -->  END((end))
```



## Programme complet

Avec ces quelques instructions on peut déjà décrire beaucoup de programme.

Par exemple, voici un programme qui vérifie votre mot de passe

```mermaid
flowchart TB

S((Start)) --> SetTentative[tentatives = 0]
SetTentative --> SetPassword[Password = None]
SetPassword --> TestPassword{{user_password != PASSWORD and Tentative < 3}}
TestPassword -- oui --> AddTentatitve[tentatives += 1] --> AskPassword@{ shape: curv-trap, label: "Mot de Passe: " }
AskPassword --> GetPassword[/→ user_password/]
GetPassword --> TestPassword
TestPassword -- non --> TestPassword2{{user_password == PASSWORD}} -- oui --> A@{ shape: curv-trap, label: "Le mot de passe correct" } --> E((End))
TestPassword2 -- non --> B@{ shape: curv-trap, label: "Mot de passe est incorrect" } --> E
```

## Moins technique plus fonctionnel

Comme en témoigne ce dessin de [xkcd](https://xkcd.com), on peut faire des diagramme de flux pour plein de choses (comme expliquer comment fonctionne un diagramme de flux). 

![[xkcd_flow_charts.png]]

C'est par exemple quelque chose de fort utiliser pour expliquer les scénarios de conversation dans les entreprises de démarchage téléphonique.

Voici le programme de saisie de password expliqué à l'aide d'un flowchart, mais d'un point de vs fonctionnel.

```mermaid
flowchart TB

S((Start)) --> SetTentative[Initialisation des tentatives à 0]
SetTentative --> AskPassword@{ shape: curv-trap, label: "Demande du mot de passe" }
AskPassword --> GetPassword[/Saisie du mot de passe/]
GetPassword --> TestPassword{{Le mot de passe n'est pas bon et le nombre de tentative est inférieur à 3}}
TestPassword -- oui --> AddTentative[Incrémentation du nombre de tentatives]--> AskPassword
TestPassword -- non --> TestPassword2{{Le mot de passe est bon}} -- oui --> A@{ shape: curv-trap, label: "Le mot de passe est bon" } --> E((End))
TestPassword2 -- non --> B@{ shape: curv-trap, label: "Le mot de passe est incorrect" } --> E
```

## Commentaires

Bien évidemment parfois le diagramme de flux ne suffira pas de lui même et il vous faudra ajouter des commentaires. (Tout comme dans un code classique). C'est évidemment autorisé (voir encouragé).

```mermaid
flowchart TB

S((Start)) --> SetTentative[Initialisation des tentatives à 0]
S ~~~ Comment@{ shape: comment, label: "Le mot de passe est récupéré sur un server, surlequel il est stocké sous un format encrypté"} ~~~ SetTentative
SetTentative --> AskPassword@{ shape: curv-trap, label: "Demande du mot de passe" }
AskPassword --> GetPassword[/Saisie du mot de passe/]
GetPassword --> TestPassword{{Le mot de passe n'est pas bon et le nombre de tentative est inférieur à 3}}
TestPassword -- oui --> AddTentative[Incrémentation du nombre de tentatives] --> AskPassword
TestPassword -- non --> TestPassword2{{Le mot de passe est bon}} -- oui --> A@{ shape: curv-trap, label: "Le mot de passe est bon" } --> E((End))
TestPassword2 -- non --> B@{ shape: curv-trap, label: "Le mot de passe est incorrect" } --> E
```

*Noté que les commentaire ne sont pas régit par une convention particulière. 
Les accolades sont dût à Mermaid, elles ne sont pas du tout obligatoires.*


## La boucle arithmétique en diagramme de flux

En tant que développeur·euse, la boucle arithmétique ou boucle *for* est un outils qu'on utilise assez régulièrement.

Le diagramme de flux est n'a pas de représentation native pour ce mécanisme, mais on peut s'en tirer relativement facilement.

Prenons le code suivant en exemple:

```python 
number = int(input("Nombre: "))

factorial = 0
for n in range(1, number+1):
	factorial += n
	
print(f"Factoriel: {factorial}")
```

On peut l'écrire sous forme de diagramme comme suit:
```mermaid
flowchart TB

S((Start)) --> ANum@{ label: "Number: ", shape: curv-trap}
ANum --> GNum[/→ number/] 
GNum --> SFac[factorial = 0]
SFac --> For@{shape: f-circ, label: "test" }
UFac[factorial *= n] --> For
For -- for n = 1 → number --> UFac
UFac --> PFac@{ label: "'Factoriel: ' + factorial", shape: curv-trap} --> E((End))


```

