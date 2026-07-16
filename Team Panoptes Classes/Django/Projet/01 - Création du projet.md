---
publish: true
---
Nous allons créer un petit projet qui permettra de présenter un catalogue de livres.

Après avoir suivi les instructions d'[[Installation de Django]], et avoir configuré et activé votre environnement virtuel, vous pouvez créer le projet via votre terminal.

> [!warning] Placez-vous dans le bon dossier !
> Les commandes qui suivent doivent être exécutée dans le dossier où vous souhaitez créer le projet. Elles vont générer un sous-dossier avec le nom du projet là où vous les exécutez.

La commande pour créer un nouveau projet est:
```shell
django-admin startproject bookstore
```


> [!NOTE]- Autre nom de projet
> Vous pouvez choisir un autre nom de projet en utilisant
> ```shell
> django-admin startproject <project_name>
> ```
> et en remplaçant `<project_name>` par le nom que vous souhaitez

Cette commande va générer une série de fichiers et de dossiers contenant la configuration globale du projet, avec la structure suivante :

![[django_projet_fichiers.png]]

Certains de ces fichiers peuvent être ignorés dans ce premier projet :
- `__init__.py` : un fichier interne à Python, dont on ne va pas s'occuper.
- `asgi.py`et `wsgi.py`: des fichiers destinés à la mise en ligne finale du projet.

Les autres, en revanche, sont plus importants pour nous :
- `settings.py` : Contient tous les paramètres de configuration du projet. Nous les modifierons régulièrement.
- `urls.py` : Dans ce fichier sont définies les [[URLs]] globales du projet.
- `manage.py` : Fichier permettant de lancer le projet, mais aussi de réaliser toute une série de tâches d'administration. Voir [[Commandes pour gérer le projet]].