En Python, on a croisé déjà des tas d'objets sans s'en rendre compte.
La moindre variable est un objet.

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
Dans le code suivant, `name`, `age` et `LIMIT_AGE`

Si on devais grossièrement résumé, un objet c'est une variable.
En python, la moindre valeur qui entre dans une variable est un objet.

Plus tard dans le cours on verra ensemble que c'est effectivement le cas, mais d'abord il faut comprendre ce qu'est une [[Classe|classe]]. 