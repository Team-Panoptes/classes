
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

## Dictionnaire des données

```
(pk_fiche CLE PRIMAIRE)

- debut_emprunt
- fin_emprunt

(Livres)

- titre_livre //
- nom_auteur·rice //
- prenom_auteur·e //
- nom éditeur·rice
- ISBN

(Films) 

- titre_film //
- nom_réalisateur·rice //
- prenom_réalisateur·rice //
- langue_parlee
- langue_ecrite
- nom acteur·rice //
- prenom acteur·rice //

(Emprunteur·euse)

- nom //
- prenom //

(Communication)

- telephone //
- email //

// -> Elements des groupes répétitifs ET ceux non-liés à la clef primaire
```

### Commentaires
Bonne idée de déjà repéré à ce stade les éléments qui seront éligibles comme groupes répétitif et comme éléments non-lié à la clé primaire. Si tu veux aller encore un pas plus loin,  tu pourrais faire une distinction entre les deux pour encore plus d'aider.

## Modèle Conceptuel des Données

![[Clémentine - Commentaires MCD|100000]]