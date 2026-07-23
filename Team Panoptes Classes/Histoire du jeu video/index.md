
```release-timeline
table
year, choice(alias_name=null,file.name,alias_name)
from #game
sort asc
```

Liste des jeux:
```dataview
list 
from #game 
sort choice(alias_name=null,file.name,alias_name) asc
```
