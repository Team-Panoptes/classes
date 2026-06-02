> [!NOTE] Enoncé
> 
Vous voudriez faire une base de données pour gérer les emprunts que vous faites et qui vous sont faits.
>
> Vous désirez gérer deux types d’objets :
>
  >   - Les livres
> - Les films
>
> 
> **Films**
>
> Pour les films, vous voulez connaitre le titre du film, les acteurs et le réalisateur et les langues disponibles pour les sous-titres et les doublages.
>
> **Livres**
> 
> Pour les livres, vous voulez connaitre les auteurs, l’éditeur et l’ISBN du livre.
>
**Films et Livres**
>
> Pour les livres et les films, vous voulez connaitre le propriétaire de l’objet.
>
>
**Emprunts**
>
> Vous désirez aussi encoder les emprunts. Chaque emprunt est lié à une personne (nom, prénom, numéro de téléphone, email), une date de début et une date de fin.
> 
Ecrivez le dictionnaire des données, le MCD et le MLD de cette base de données.

## Dictionnaire de données

| Données      |           |              |
| ------------ | --------- | ------------ |
| Prêt id      | nom       | Acteurs      |
| prêteur      | prenom    | nom          |
| nom          | email     | prenom       |
| prenom       | telephone | realisateurs |
| email        | livres    | Nom          |
| telephone    | titre     | prenom       |
| emprunteur   | auteurs   | langues      |
| nom          | nom       | sous titres  |
| prenom       | prenom    | doublage     |
| email        | editeur   |              |
| telephone    | nom       |              |
| Date entree  | ISBN      |              |
| Date sortie  | films     |              |
| propriétaire | titre     |              |

### Commentaires
Il te manque les données obligatoires. Même si ça ne sert pas directement c'est important de le mettre ici pour faire valider au client.

## Modèle Conceptuel des Données 

![[Alice - Commentaires MCD|10000000]]