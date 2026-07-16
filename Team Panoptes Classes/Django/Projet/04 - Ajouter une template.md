---
publish: true
---
Plutôt que d'écrire à la main le code HTML de la page finale qu'on veut renvoyer à l'utilisateur, il est beaucoup plus pratique d'utiliser des fichiers séparés, qu'on nomme collectivement "templates" (modèle, en Anglais).

Ces fichiers contiennent du code HTML, c'est à dire du code décrivant la structure de la page. Mais aussi des tags et autres notations spécifiques à Django, comme nous le verrons plus loin.

```django
<html>
{{variable}}
</html>
```

