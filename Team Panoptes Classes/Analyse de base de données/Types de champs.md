---
publish: true
---
Il y a grand nombre de type de champs voici une [liste pour MySQL](https://tutoriels.edu.lat/pub/mysql/mysql-data-types/mysql-types-de-donnees)

Ce qui est important lorsque vous construisez votre MPD c'est de bien choisir le type de champ pour paré au plus efficace et surtout pour alléger un maximum vos données.

Par exemple pour stocker le code postal de la ville. En Belgique le plus grand code postal est 9992 (Middelbourg). Donc je n'ai pas besoin d'un type INT (4 octets), je peux me contenter d'un SMALLINT (2 octets).

De la même manière, si dans la base de données, j'ai un champ qui  référence les scores des match de Basket jouer, il est fort probable qu'un TINYINT(1 octet) soit suffisant.

## VARCHAR

Un type de champs commun à pas mal de SGBD est le VARCHAR, c'est une chaine de caratère qui a un nombre limité de caractère, fixé lors de la création.

Si je crée une table `Personne` avec un champ `prenom` qui est un VARCHAR(20), je ne pourrais pas avoir de prénom plus long que 20 caractères. Il faut donc choisir avec soin le nombre de caractère en fonction du champ.

## Ce que vous faite n'est pas gravé définitivement dans la pierre.

Même si c'est important de réfléchir en amont car cela évitera de repasser sur un travail déjà fait, les choix que vous faites en matières de types (et même en matière de champs) peuvent être revu. Une base de données évolue avec le temps pour s'adapter au changement interne ou externe. 
