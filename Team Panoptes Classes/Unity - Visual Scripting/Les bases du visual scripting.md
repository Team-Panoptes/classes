---
publish: true
---
Le visual scripting comme son nom l'indique est manière de créer des scripts sans écrire de code.
Au lieu dans coder en CSharp (ou dans un autre langage), on va réaliser des Graph.

Le composant de base du visual scripting est le Script Machine.
C'est lui qui va vous permettre d'ajouter vos Graphs à un GameObject afin d'en faire des composants.

Si vous ajoutez un composant "Script Machine" à un GameObject, vous obtiendrez ceci.

![[script_machine.png]]

Normalement l'ajout d'un composant "Script Machine" ajoute automatiquement un composant "Variables", si il n'était pas déjà présent. Nous reviendrons plus tard sur ce composant.

![[variables.png]]

Vous pouvez sélectionner un Graph déjà utilisé ou bien en créer un nouveau avec le bouton "new".

Une fois que vous avez sélectionné ou créé un nouveau Graph vous pouvez l'éditer via le bouton "Edit Graph". Vous pouvez aussi l'éditer en double-cliquant sur lui dans l'explorateur de projet.

On va alors arriver dans une fenêtre comme celle-ci.

![[windows_graph.png]]

Avant d'aller plus loin, il est important de comprendre une chose: Unity, comme la plupart des Engine dédié au jeux vidéo, est basé sur des évènements.

Les évènements (ou events anglais) sont des sortes d'impulsions envoyés par l'application pour dire que quelque chose s'est passé. Ici, on peut en voir deux.
- **On Start**
- **On Update**

**On Start** est un évènement qui est envoyé une fois, lors de la première frame où le GameObject est actif.
**On Update** est envoyé à chaque frames où le GameObject est actif.

Donc tout le code lié à **On Start** sera joué une fois et celui lié à **On Update** sera joué à chaque frames.

## Premier Graph

Un Graph se compose de nodes. Chaque node représente un morceau du programme.
Dans un Graph, le code partira toujours d'un évènement comme **On Update** ou **On Start** et ira de node en node jusqu'à la dernière node.

### Ajout d'une node

Pour ajouter une node faite un clic droit sur une partie vide du Graph, un menu contextuel s'ouvrira.

![[add_nodes_1.webp]]


Ensuite vous pouvez choisir dans le menu de nodes proposées ou bien taper le nom de la node recherchée. Dans notre cas on va prendre la node **Transform: Set Position**

![[add_nodes_2.webp]]

### Node

![](node.svg)
%%[🖋 Edit in Excalidraw](node.md)%%

On peut avoir plusieurs types d'entrées et plusieurs type sorties. Chacun de ses types peut être présents plusieurs fois.

#### Connecteurs

Les connecteurs représente le flux du programme. En partant d'un événement, le programme va suivre les connecteurs et passer par chacune des nodes connectées, dans l'ordre de connexion.

![[example_connection.png]]

Ici par exemple, le programme, si on l'exécute, va d'abord changer la position avec **Set Position** et puis changer la "locale scale" avec **Set Local Scale**.

Pour créer une connexion on *drag and drop* du connecteur sortant au connecteur entrant des nodes qu'on veut connecter. Ou inversement.

![[node_connection.webp]]

Si vous lâcher votre *drag and drop* dans le vide, Unity va vous proposer d'ajouter une node et de la connecter.

![[add_node_and_connection.webp]]

Si lancer votre jeu maintenant, vous constaterez que dés la première frame, le GameObject que sur lequel vous aviez mis votre Script Machine va se positionner en `0, 0, 0`.

### Les données

Dans une node, il peut y avoir des données. Parfois vous aurez la possibilité de les entrer directement dans la node. Comme pour **Set Position**.

![[enter_data.webp]]

Mais parfois il faudra recourir à d'autre node.

Pour avoir un exemple concret, reprenons un Graph vierge.

On va réaliser un Graph qui faire bouger votre GameObject à une certaine vitesse et cela à chaque frame.

Pour cela on va utiliser une autre node, qui est parfaite pour calculer un déplacement: **Transform: Translate** (pour cette exemple ne prenez pas la version "relative to" mais bien la classique).


Il y a deux données en entrée
![](translate_node.excalidraw.svg)
%%[🖋 Edit in Excalidraw](translate_node.excalidraw.md)%%

La première donnée, le Transform, est très bien comme elle est. `This` indique que le Transform concerné sera celui sur lequel est la Script Machine et c'est ce qu'on veut.

Par contre la Translation n'est pas juste. Comme on voudrait avoir une vitesse fixe, on va devoir calculer la translation en fonction du temps entre deux frames (puisque qu'on veut bouger chaque frame).

Evidemment, il y a une node qui se charge de ça: **Get Delta Time**

![[get_delta_time_node.png]]

Cette node n'est pourvue que d'une seule donnée sortante: le temps passé depuis la frame précédente.

Ensuite on va utiliser une node pour déterminer la vitesse, la vitesse étant un vecteur à 3 dimensions (dans un univers en 3D), on va prendre la node **Vector3 (Literal)** et lui donner une valeur de `0, 1, 0`, ce qui fera monter votre GameObject de 1 m/s vers le haut.

![[vector3_node.png]]

On a la vitesse, on a le temps, il ne nous manque plus que de multiplier ces deux là pour obtenir le déplacement. Rappelez-vous: $déplacement = vitesse \times temps$.

Il y a une node dédié aux multiplications : **Multiply (Generic)**

![[multiply_node.png]]

Il a deux entrées et une sortie. La sortie sera le produit de la multiplication entre la donnée entrante A et la données entrée B.

![[multiply_vector_scalar.png]]

Il ne nous reste plus qu'à connecter la sortie à notre **Translate** et de connecter celui-ci à l'update et le tour est joué.

![[connecting_all_things.webp]]

On peut lancer notre jeu pour voir si ça marche.

![[elevate_cube.webp]]