Une template (ou modèle) dans Django est un fichier HTML enrichi par des notations spécifiques pour ajouter de la logique ou injecter des données.

La structure de la page est décrite en HTML standard, mais une syntaxe spécifique permet de répéter des morceaux de la page, de les rendre conditionnels, ou encore simplement de remplacer certaines parties par des données fournies par la [[Vues|vue]].

Example:
```django
<h1>Titre de la page</h1>

<p>Bonjour, {{ username }} !</p>
```

Ici, la notation `{{ username }}` désigne une variable qui sera remplacée au moment de l'affichage de la page.