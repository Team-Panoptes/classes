## GameObject

Dans Unity, votre jeu sera composé en grande partie de GameObject.
En effet, chaque élément du jeu est un GameObject.
Ce sont ces GameObjects que vous retrouvez dans l'onglet [[Unity Editor#^adcd6f|"hierarchy"]].

![[hierarchy.png]]

## Component

Lorsqu'on sélection un GameObject dans la partie [[Unity Editor#^adcd6f|"hierarchy"]], l'onglet [[Unity Editor#^de0111|"Inspector"]] affiche tout les composant de ce GameObject.

Les composant ou components (en anglais), sont les parties d'un GameObject. 

Comme dans Power Rangers où tout les composants serait des Zords et le GameObjects serait le Megazord [^1]. 

![[megazord-mighty-morphin-power-rangers.gif|412]]

En gros un GameObject est un ensemble de components.

Et c'est l'alchimie de plusieurs components travaillant ensemble et même parfois interagissant qui fera la spécificité d'un GameObject.

On appelle ce principe, où un ensemble d'éléments s'occupent chacun d'un aspect du comportement total de l'objet, la "composition".

Par exemple prenons le cube de base de Unity.

![](basic_cube.excalidraw.svg)
%%[🖋 Edit in Excalidraw](basic_cube.excalidraw.md)%%

Ce cube à 4 composants:
- **Transform**: qui gère la position, la rotation et l'échelle (scale) de l'objet.
- **Mesh Filter**: Qui gère le mesh de l'objet.
- **Mesh Renderer**: Qui gère l'affichage de l'objet.
- **Box Collider**: Qui gère les collisions avec cette object.

Ensemble, nous avons un cube qui flotte dans le vide de notre scène.

Et si par exemple, je voulais en plus que notre cube soit sujet à la gravité et "tombe", je devrais lui rajouter le composant qui s'occupe de ça: le Rigid Body.

#### Ajout d'un composant

En bas de votre liste de composant se trouve un bouton "Add Component", c'est lui qui vous permet d'ajouter un composant.

![[add_rigidbody.webp]]

[^1]: On a conscience que cette référence date un peu.
