
> [!tip] Où lancer ces commandes ?
> Toutes les commandes qui suivent doivent être lancées dans le dossier contenant le fichier `manage.py`.
> Veillez aussi à avoir activé votre [[environnement virtuel]] !

# Lancer le serveur du projet

```shell
python manage.py runserver
```
# Créer les migrations avec les changements de la base de données

```shell
python manage.py createmigrations
```

# Appliquer les migrations

```shell
python manage.py migrate
```

# Créer un utilisateur avec les droits admin

```shell
python manage.py createsuperuser
```