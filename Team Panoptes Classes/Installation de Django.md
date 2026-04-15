Avant toute chose, il faut installer Django.

De façon générale, on utilise le gestionnaire de packages fourni avec Python, `pip`. Mais comme un projet Django est plus complexe que quelques scripts isolés, on se doit d'organiser un peu mieux notre projet.

# Étape 1 : Créer et activer un [[environnement virtuel]]


> [!success] Bonne pratique
> Cette méthode est à préconiser pour tout projet Django se voulant sérieux. Les étapes supplémentaires valent la peine, et les environnements virtuels sont utilisés dans toutes les sociétés qui travaillent avec Python.

Pour isoler chacun de vos futurs projets en Django, il est recommendé d'utiliser un [[environnement virtuel]].

Vous devrez donc créer et activer un environnement virtuel dans un nouveau dossier créé pour votre projet :

Linux/Mac:
```shell
python -m venv venv
source venv/bin/activate
```

Windows:
```shell
python -m venv venv
venv\Scripts\Activate
```

Une fois votre environnement activé, vous pouvez passer à l'installation proprement dite.

# Étape 2 : Installer à l'aide de `pip`

> [!WARNING] Attention de bien activer votre [[environnement virtuel]]!
> Si vous avez sauté l'étape précédente, ou que vous avez oublié d'activer l'environnement, vous allez installer Django dans le dossier global, ce qui est une mauvaise idée!

Django étant distribué sur comme beaucoup de packages via https://pypi.org, il suffit d'utiliser les outils standards de Python pour l'installer.

Pour installer la version de Django la plus récente dans votre environnement, vous pouvez utiliser la commande suivante :

```bash
pip install django
```

Pip va ensuite chercher les packages nécessaires (Django et ses dépendances) et les installer.

![[Attachments/django_pip_install.gif]]

# Étape 3 : [[Tester votre installation de Django]]

Utilisez la commande suivante dans votre environnement actif :
```shell
django-admin --version
```

Si tout est en ordre, vous recevrez en retour le numéro de la version de Django installée:
```
6.0.4
```



