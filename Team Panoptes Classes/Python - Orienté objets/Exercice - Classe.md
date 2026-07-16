---
publish: true
---
```python

class Calculator:

	def __init__(self, initial_value):
		self.result = initial_value
		
	def add(self, value):
		self.result += value
```
Ajoutez quelques méthodes à notre classe :

Ajoutez les méthodes suivantes:
- `sub`: elle a les même paramètres que `add` mais elle effectue une soustraction de la valeur avec `result`.
- `mult`: elle a les même paramètres que `add` mais elle effectue une multiplication de la valeur avec `result`.
- `div`: elle a les même paramètres que `add` mais elle effectue une division de la valeur avec `result`.
- `reset`: remet `result` à `0`.
	
Faites en sorte que `add`, `sub`, `mult` et  `div` renvoient le résultat après l'opération.