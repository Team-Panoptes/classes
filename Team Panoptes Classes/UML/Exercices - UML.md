Lisez les spécifications et puis créez les diagrammes demandés.
### Spécifications:

On voudrait créer un simulation de jardins.

Un jardin a peut accueillir un nombre de plantes défini. Ce nombre une fois défini ne changera pas.

Un jardin en plus du **nombre de plantes,** on représentera aussi la fertilité de la terre.
Une **fertilité** normale est représenté par `1.0`, plus elle est bonne, plus elle sera au-dessus de cette valeur, plus elle est mauvaise, plus elle sera en dessus. La valeur minimum sera de `0`, ce qui représente la fertilité la plus basse.

Une plante appartient au jardin et dans notre simulation, elle ne quittera pas le jardin.
Chaque plante aura la possibilité d'être arrosée et de croître.

Chaque plante aura une **vitalité**, représenté par un nombre allant de `0.0` à `1.0`, ce chiffre est initialement à `1.0`.

Chaque plante aura une **croissance** qui sera aussi un nombre allant de `0.0` à `1.0`, ce nombre 
commence à `0.0`.

Chaque plante aura une caractéristique d'**hydratation**, celle-ci arrive entre -`1.0` et `1.0` et commence à `0.0`

L'action d'être arrosée d'une plante, augmentera sont hydration du nombre passé en argument sans jamais dépassé le maximum (`1.0`).

L'action de croître aura plusieurs conséquences qui on lieu dans l'ordre:
1. L'hydratation baisse `0.1` (attention que l'hydratation ne peut pas baisser en dessous de `-1.0`)
2. la croissance et la vitalité sont affectée comme suit (attention que ses deux valeurs ne peuvent dépasser leur maximum et leur minimum):
	- Si l'hydratation est entre `-0.1` et `0.1` la plante gagne `0.2 x la fertilité` du jardin  en croissance et `0.1 x la fertilité`  en vitalité. 
	- Sinon si l'hydratation est entre `-0.5` et `0.5`, la plante gagne `0.1` en croissance.
	- Dans les autres cas, elle perd `0.1` en vitalité.

Si la plante est morte, elle ne peut pas croître.

Une plante est considérée comme morte si vitalité est à `0.0`.

Dans notre simulation il y aura trois type de plantes

#### [Sedum Morganianum](https://en.wikipedia.org/wiki/Sedum_morganianum)
Cette plante ne supporte pas d'être trop arrosée. Lors de sa croissance, si son hydratation est de plus de `0.5` elle pert `0.5` de vitalité. En revanche, elle ne perd pas de point de vitalité tant que son hydratation n'est pas à `0.0` (dans ce cas là elle perd `0.1` comme les autre plante).