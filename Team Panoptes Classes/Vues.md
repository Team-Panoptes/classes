Une vue est une fonction ou une classe Python qui reçoit une requête HTTP, et qui fournit en retour une réponse (souvent une page HTML).

Elles sont souvent dans un fichier nommé `views.py`.

Le flux classique pour une vue est:
1) Réception de la requête
2) Chargement des données pertinentes via les [[Modèles|modèles]]
3) Injection des données dans une [[Templates|template]] HTML
4) Renvoi de la réponse complète

Il existe 2 types de vues en Django
- **Fonctions** : simples à écrire, mais demandent beaucoup de répétitions car peu extensibles
- **Classes** : utilisent la programmation orienté objet pour permettre de réutiliser beaucoup de fonctionnalités de base. Plus abstraites au début, mais beaucoup plus puissantes que les fonctions.

