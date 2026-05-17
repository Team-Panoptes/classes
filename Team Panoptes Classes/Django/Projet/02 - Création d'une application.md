Django organise les projets sous forme d'applications (ou apps) distinctes, favorisant une bonne réutilisation.

Par exemple, si vous développez une application "blog", vous êtes censé·e·s pouvoir la réutiliser sur un autre site avec un minimum de modifications (en théorie...).

La commande pour créer une nouvelle app dans votre projet est la suivante:

```shell
django startapp books
```

> [!NOTE]- Autre nom d'app
> Comme pour le projet, le nom de l'app peut changer:
> ```shell
> python manage.py startapp <app_name>
> ```
> Remplacez `<app_name>` par le nom souhaité.

Un nouveau sous-répertoire `books`aura été créé dans votre projet, avec un nouvel ensemble de fichiers à l'intérieur.

![[django_app_fichiers.png]]q

Au total, votre projet doit donc se présenter comme suit:

![[django_projet_app_fichiers.png]]