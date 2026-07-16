---
publish: true
---
Les URLs (Universal Resource Locator) sont les adresses des différentes pages de votre site ou application.

Définies le plus souvent dans un fichier `urls.py`, elles indiquent à Django quelle [[Vues|vue]] doit être utilisée pour répondre à quelle requête.

# Le principe

Les URLs sont en quelques sortes le point d'entrée de votre application. On peut les considérer comme le service de réception à l'entrée d'un bâtiment : vous demandez comment atteindre un département particulier, et les réceptionnistes vous aiguillent vers la bonne partie du bâtiment.

Une fois la requête reçue, le dispatcheur d'URLs de Django va indiquer quelle vue doit être utilisée pour y répondre.

# En pratique
