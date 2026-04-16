Django utilise une structure dite "MVT" ou [[Modèles]]-[[Vues]]-[[Templates]], qui sépare le code en plusieurs parties distinctes et modulaires.

- [[Modèles]] pour la description des données (Base de données)
- [[Templates]] pour la présentation et la structure des pages (HTML/CSS)
- [[Vues]] pour la logique de chaque page (Python)

C'est évidemment une vue simplifiée, les modèles sont écrit en Python aussi et les templates utilisent plus que du simple HTML.

De plus, il existe aussi les [[URLs]], qui détermine quelle page du site correspond à quelle vue.
# Comment Django génère-t-il une page ?

Voici schématiquement comment les différents élements principaux d'une application Django interagissent.

![[Fonctionnement général de Django 2026-04-16 02.27.07.excalidraw]]