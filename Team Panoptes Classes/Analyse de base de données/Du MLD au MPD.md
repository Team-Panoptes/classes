Pour illustré cette exemple, je vais me baser sur MySQL(InnoDB) .

Reprenons le MLD de notre gestion de classe et voyons ce qu'il donne en MPD

![[MLD to MRD - Part A.excalidraw.svg]]
%%[[MLD to MRD - Part A.excalidraw.md|🖋 Edit in Excalidraw]]%%

```mermaid
erDiagram

Personne }o--|| Cours: "professeur"
Personne }o--|| Etudiant_Cours: "etudiant"
Cours }o--|| Etudiant_Cours: ""
Classe }|--|| Cours: ""

    Personne {
        personne_id AUTOINCREMENT PK
        nom VARCHAR(20) 
        prenom VARCHAR(20) 
       date_naissance DATE 
    }
    
    Cours {
    cours_id AUTOINCREMENT PK
    intitule VARCHAR(100) UK
    professeur_xid INT FK
    classe_xid INT FK
    }
    
    Classe {
    classe_id AUTOINCREMENT
    nom VARCHAR(100) UK
    numero VARCHAR(5) UK
    }
    
    Etudiant_Cours {
    personne_xid INT PK,FK
    cours_xid INT PK,FK
    }
```
