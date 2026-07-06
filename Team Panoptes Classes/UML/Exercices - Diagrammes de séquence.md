## 1. Voici la procédure décrivant une commande  dans un restaurant "fast-food"

Le client commande un repas, le caissier entre la commande du client dans le système et ensuite annonce au client le montant de sa commande.
Le client paie, une fois le paiement encaisser le caissier informe le système que la commande doit aller en cuisine.
Le cuistot récupère la commande et commence à prépare le repas.
Une fois le repas prêt, il informe le client que celui-cis est disponible. 
Le repas est manger par le client.

## 2. Ecrivez le diagramme python qui correspond code python suivant:

```python
from random import randint


class Fireball:
	def __init__(self, damage: int):
		self.damage = damage
		
	def injure(self, target: 'Character') -> None:
		target.lives -= self.damage
		
class Character:
	def __init__(self, lives: int, power: int) -> None:
		self.lives = lives
		self.power = power
		
	def attack(self) -> Fireball:
		return Fireball(randint(1, self.power))

class Player(Character):
	def __init__(self):
		super().__init__(10, 3)
		
	def super_attack(self) -> Fireball:
		 self.lives -= randint(1, self.power)
		 return Fireball(randint(2, self.power * 2))

class Monster(Character):
	def __init__(self):
		super().__init__(12, 4)

# -- main program --

monster = Monster()
player = Player()

print(f"Monster: {monster.lives}")
print(f"Player: {player.lives}")

while monster.lives > 0 and player.lives > 0:
	is_attack_is_super = input("Joueur fait un super attaque? (o/n)")
	if is_attack_is_super in ("o", "O"):
		player_fireball = player.super_attack()
	else:
		player_fireball = player.attack()
	monster_fireball = monster.attack()
	
	player_fireball.injure(monster) 
	monster_fireball.injure(player)
	
	print(f"Monster: {monster.lives}")
	print(f"Player: {player.lives}")

if player.lives >  0:
	print("Player wins!")
elif monster.lives > 0:
	print("Monster wins!")
else:
	print("Double KO.")
```
