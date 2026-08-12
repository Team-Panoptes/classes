
Une state machine est un autre type de graphe qui permet d'organiser le comportement d'objets et de systèmes en séparant différentes situations.

![[state_machine_intro.png]]

C'est une solution courante pour gérer du code qui doit s'adapter à des facteurs externes, ou aux modifications de l'état d'un objet. Ce genre de solution réutilisable est aussi appelé "design pattern".

Concrètement, une State Machine est constituée de 2 éléments principaux :

1. Des **états** qui définissent le comportement de l'objet dans les différentes situations
2. Des **transitions** entre ces états

Et la State Machine ne peut être que dans un état à la fois.

## 1. Créer une State Machine

Pour ajouter une State Machine a un GameObject, il faut lui ajouter un composant `StateMachine` :

![[add_component_state_machine.png]]

Comme pour un composant `ScriptMachine`, vous pouvez réutiliser un graphe existant ou bien en créer un nouveau (sous forme de fichier ou bien directement stocké dans le composant).

![[new_state_machine_component.png]]


> [!tip] Privilégiez la sauvegarde sous forme de fichier
> Sauvegarder vos scripts sous forme de fichiers indépendants permet de les réutiliser, et simplifie leur gestion et leur backup. Sans compter l'option de pouvoir récupérer le graphe dans votre prochain projet!

Vous pouvez ensuite cliquer sur `Edit Graph` pour éditer votre nouvelle State Machine.

# 2. Éditer une State Machine

Au départ, votre State Machine ne contiendra qu'un unique état, nommé Start.

![[blank_state_machine.png]]

