
#> nzl:types/move/attack_available/combat
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque déjà active
scoreboard players operation #seconds nzl.attack.cooldown.02 = @s nzl.attack.cooldown.02
scoreboard players operation #seconds nzl.attack.cooldown.02 /= #20 uhc.data.numbers
execute if score @s nzl.attack.cooldown.02 matches 1.. run tellraw @p[scores={nzl.type.player=02,nzl.attack.no_flood=0,uhc.player.lang=061801},predicate=uhc:id_team] [{"text":"\nAttaque non rechargée.","color":"#3F9FFF","bold":true},{"text":"\nTemps restant : ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.cooldown.02"},"color":"#FF3F3F","bold":false},{"text":" secondes.\n","color":"#7FBFFF","bold":false}]
execute if score @s nzl.attack.cooldown.02 matches 1.. run tellraw @p[scores={nzl.type.player=02,nzl.attack.no_flood=0,uhc.player.lang=051407},predicate=uhc:id_team] [{"text":"\nAttack not reloaded.","color":"#3F9FFF","bold":true},{"text":"\nTime remaining: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.cooldown.02"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]

# Si attaque disponible
execute unless score @s nzl.attack.cooldown.02 matches 1.. run function nzl:types/move/attack_activation/combat
