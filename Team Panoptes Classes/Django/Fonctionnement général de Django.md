---
publish: true
---
Django utilise une structure dite "MVT" ou [[Modèles]]-[[Vues]]-[[Templates]], qui sépare le code en plusieurs parties distinctes et modulaires.

- [[Modèles]] pour la description des données (Base de données)
- [[Templates]] pour la présentation et la structure des pages (HTML/CSS)
- [[Vues]] pour la logique de chaque page (Python)

C'est évidemment une vue simplifiée, les modèles sont écrit en Python aussi et les templates utilisent plus que du simple HTML.

De plus, il existe aussi les [[URLs]], qui détermine quelle page du site correspond à quelle vue.
# Comment Django génère-t-il une page ?

Voici schématiquement comment les différents élements principaux d'une application Django interagissent.

![](django_structure.excalidraw.svg)

1. Le serveur reçoit une requête d'un utilisateur.
2. Django interprète l'URL de la requête, et décide quelle vue appeler.
3. La vue charge les données pertinentes de la base de données ou les calcule.
4. La vue utilise, le cas échéant, une template HTML dans laquelle les données sont insérées.
5. La vue renvoie une réponse HTTP à l'utilisateur qui contient la page finale.

