---
publish: true
---
À ce stade, le fichier `views.py`de l'application `books` est pratiquement vide, et doit ressembler à ça :

```python
from django.shortcuts import render

# Create your views here
```

Nous allons créer une [[Vues|vue]], sous forme d'une fonction[^1]. Le rôle de la vue est de générer une réponse à la requête de l'utilisateur.

La version la plus simple d'une vue consiste à renvoyer une chaîne de caractères formatée comme une réponse HTTP pour qu'elle soit acceptée par le navigateur web de l'utilisateur.

Modifiez votre fichier `views.py`pour qu'il ressemble à:

```python
from django.shortcuts import render
from django.http import HttpResponse

def hello_world(request):
	return HttpResponse("Hello, world!")
```




[^1]: Il existe des vues basées sur les classes, mais dans un premier temps, il est plus facile de travailler avec des fonctions. Si vous êtes intéressé·e, la [documentation de Django](https://docs.djangoproject.com/en/6.0/topics/class-based-views/) sur le sujet est une bonne source.
