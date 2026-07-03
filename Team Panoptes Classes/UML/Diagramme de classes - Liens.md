En dehors de la généralisation, il y a d'autres liens possibles pour un diagramme de classes.

Ces liens sont là pour représenté les relations entre les classes.

## Composition

Le premier lien que nous allons voir est la composition.
Une composition est la pour représenté des entités qui compose une autre entité.

Un des exemples tartes à la crème est celui de la personne. 
Une personne est composé de bras, de jambes et du tronc et d'une tête

```mermaid
classDiagram

class Person{
-legL : Leg
-legR : Leg
-armL : Arm
-armR : Arm
-head : Head
-trunk : Truck
}

Person *-- Leg
Person *-- Arm
Person *-- Head
Person *-- Trunk
```

La composition est représentée par une ligne qui fini par un diamant plein (colorié en noir). Le diamant est toujours du coté celui qui est composé de l'entité.

Ici `Person` est composé de `Leg` donc le diamant est du coté de `Person`.

Au niveau programmation, si une classe compose une autre classe, son existence est étroitement liée à la classe qu'elle compose.

Dis autrement, quand une entité disparaît, les composants de cette entité disparaissent aussi.

Par exemple, si une instance de `HumanBody` venait à disparaître, toutes les instances de `Leg` liées à ce `Person` disparaîtrait en même temps.

## Agrégation

L'agrégation est la relation qui représente un lien entre deux classes où l'une aurait un lien d'appartenance avec l'autre sans avoir dépendance sur l'existence pour pour la composition.

Imaginons notre classe `Person` qui aurait un animal de compagnie.

```mermaid
classDiagram

class Person{
-pets : Animal[]
}

Person o-- Animal
```

L'agrégation est représentée par une ligne qui fini par un diamant vide (non-colorié). Le diamant est toujours du coté celui qui possède l'entité.

Au niveau programmation les deux classes ont une vie totalement indépendante, si une entité agrègatrice disparaît, les entités qu'elle agrègeait ne disparaîtrons pas.


## Association

Un lien d'association est un lien qui implique qu'une classe utilise l'autre (dans l'une de ses méthodes). Cela veut dire qu'il y a une connection entre elles sans qu'il y ait de lien d'appartenance.

Prenons la relation entre un étudiant et un professeur. Un professeur peut enseigner à un élève et l'élève peut apprendre du professeur. Ce qui fait que l'enseignant et l'élève sont connecté. 

Un association peut être unilatérale ou bilatérale, cela ne changera rien à la symbolisation de la relation.

```mermaid
classDiagram

class Teacher{
+teach(student: Student) void
}

class Student{
+learnFrom(teacher: Teacher) void
}

Student -- Teacher
```

## Cardinalité