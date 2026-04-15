# Qu'est-ce que c'est ?

En Python, un environnement virtuel est un dossier contenant une installation isolée de O-Python et les packages correspondants.

# A quoi ça sert ?

Par défaut, Python installe tous les packages dans un répertoire global pour tout votre système (ou au minimum votre utilisateur).

Mais qu'arrive-t-il si vous avez plusieurs projets qui dépendent du même package dans des versions différents ?

Exemple:
- Projet A utilise Django 3.2
- Projet B utilise Django 6.0

Les deux versions de Django ne peuvent pas cohabiter en même temps sur le système.

En utilisant un environnement virtuel par projet, chacun peut avoir sa version de Django sans impacter l'autre.

Le compromis est que vous devez créer et activer ses environnements avant de travailler sur le projet.

# Créer un environnement virtuel

Python vient avec le module `venv` qui permet de créer facilement des environnements virtuels.

Pour créer un environnement nommé `myproject` dans le répertoire actuel:
```shell
python -m venv myproject
```

Souvent, par simplicité, on nommera l'environnement également `venv`, la commande devenant alors
```shell
python -m venv venv
```

La commande vous créera un dossier `venv`(ou `myproject` avec la première commande), contenant toute une série de fichiers dont Python a besoin. La structure peut varier en fonction des versions ou du système d'exploitation.
```
venv
├── bin
├── include
├── lib
├── lib64
└── pyvenv.cfg
```

# Activer un environnement virtuel

Pour utiliser un environnement virtuel, vous devez l'activer.

Pour ce faire, placez-vous dans le dossier qui contient votre sous-dossier `venv`, et utilisez la commande suivante.

Sous Linux/Mac :
```shell
source venv/bin/activate
```

Sous Windows :
```shell
venv\Scripts\Activate
```

An général, votre terminal devrait indiquer `(venv)` au début de votre invite de commande pour indiquer que l'environnement est actif.

