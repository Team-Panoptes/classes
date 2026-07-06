Un diagramme de séquence est un diagramme qui montre les interactions entre les entités lors d'une séquence de la vie de ces entités. Cela permet de voir qui fait quoi et qui dépend de quoi.

On utilisera ce diagramme pour représenté un morceau du code de manière très *high level*. 
Même si de la logique y est représenté, il n'est pas fait pour montrer des algorithmes complexes, pour ça nous utiliserons plutôt le [[Diagramme de flux]].

## Instance et Lignes de vie

Pour représenté les entités d'un programme, on les représentera par un rectangle dans lequel on notera sont nom suivit d'un ":" et de la classe dont elle est l'instance.

Chaque entité aura une ligne de vie, qui montre quand elle commence à exister et quand elle s'arrête d'exister.

Voici un exemple de diagramme de séquence où l'on voit que `apple` est créer par `tree` et détruit par `kirby`.

```mermaid
---
config:
  mirrorActors: false
---

sequenceDiagram
    participant Kirby as kirby: Kirby
	participant AppleTree as tree: AppleTree
	
	create participant Apple as apple: Apple
	
	AppleTree->>Apple: produces
	
	destroy Apple
	Kirby-xApple: eats
```

## Messages

Les interactions entre les entités seront représentées par des flêches.
Comme on peut le voir avec le diagramme si dessus, les messages partent d'une ligne de vie, vers une autre.

Chaque message peut avoir une réponse. Par exemple si une fonction a un retour. La fonction sera le message et la réponse sera le retour.

%%

```mermaid
---
config:
  mirrorActors: false
---
sequenceDiagram

Participant controler as controler: Controler
participant messageBox as messageBox: MessageBox
participant user as user: User

controler->>+messageBox: display()

messageBox->>+user: get_name()
user-->>-messageBox: name
messageBox->>messageBox : Hide(false)
messageBox-->>-controler : 

```
Mermaid crée une erreur sur le site donc j'ai créer un image en attendant
%%
![[diagram_sequence_version_problem.png]]

Dans ce diagramme on peut voir qu'il est totalement possible qu'une entité s'envoie un message. Ici `messageBox` envoie le message `Hide` a elle-même. 

Aussi, les lignes de vie d'une entité deviennent des rectangles lorsqu'un message leur est envoyé jusqu'au moment où la réponse est retournée. On appelle ça une activation, car l'entité en question est en train de traiter le message.

La réponse peut ne pas contenir d'information (comme une fonction qui retourne `None` ou `void`).

### Synchrone et asynchrone

Il y a deux type de messages possibles:
- Des messages synchrone, qui suivent le cours du programme
- Des messages asynchrones qui eut sont sur des *thread* parallèles et qui donc ne seront pas assujetti à la procédure principale.

Les messages synchrones sont représentés par des flêches pleines

```mermaid
---
config:
  mirrorActors: false
---
sequenceDiagram

participant entity 1
participant entity 2

entity 1 ->> +entity 2: synchronous message
entity 2 -->> -entity 1: synchronous answer

```

Les messages asynchrones eut sont représenté par des flêches en batons

```mermaid
---
config:
  mirrorActors: false
---
sequenceDiagram

participant entity 1
participant entity 2

entity 1 -) +entity 2: synchronous message
entity 2 --) -entity 1: synchronous answer

```

Notez que la réponse est du même type que le message.

### Activations multiples

```mermaid
---
config:
  mirrorActors: false
---
sequenceDiagram

actor administrator
participant button as validationButton: Button
participant userData as userData: UserData
participant security as security: SecurityServer

administrator->>+button : Click()
button ->>+ userData : AskPermission()
userData ->> +security : AskPermission(userId)
security ->> +userData : GetGroupId()
userData -->> -security : groupId
security -->> -userData : validation
userData -->> -button : 
deactivate button 

```

Dans ce diagramme de séquence, on voit que `userData` est activé plusieurs fois. Une fois pour par `validationButton` et une autre par `security`. Comme ce sont deux activation distinct, on les représentes l'une sur l'autre.

## Acteur

Dans le diagramme précédent, on constate qu'il y a une "entité" particulière représentée par un petit personnage en batons. C'est la représentation d'un acteur.

Il arrive souvent qu'un acteur (un utilisateur) soit le déclencheur de la séquence que l'on veut représenter.

