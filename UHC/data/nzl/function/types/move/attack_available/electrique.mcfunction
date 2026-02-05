
#> nzl:types/move/attack_available/electrique
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque déjà active
scoreboard players operation #seconds nzl.attack.cooldown.05 = @s nzl.attack.cooldown.05
scoreboard players operation #seconds nzl.attack.cooldown.05 /= #20 uhc.data.numbers
execute if score @s nzl.attack.cooldown.05 matches 1.. run tellraw @p[scores={nzl.type.player=05,nzl.attack.no_flood=0,uhc.player.lang=061801},predicate=uhc:id/team] [{"text":"\nAttaque non rechargée.","color":"#3F9FFF","bold":true},{"text":"\nTemps restant : ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.cooldown.05"},"color":"#FF3F3F","bold":false},{"text":" secondes.\n","color":"#7FBFFF","bold":false}]
execute if score @s nzl.attack.cooldown.05 matches 1.. run tellraw @p[scores={nzl.type.player=05,nzl.attack.no_flood=0,uhc.player.lang=051407},predicate=uhc:id/team] [{"text":"\nAttack not reloaded.","color":"#3F9FFF","bold":true},{"text":"\nTime remaining: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.cooldown.05"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]

# Si attaque disponible
execute unless score @s nzl.attack.cooldown.05 matches 1.. run function nzl:types/move/attack_activation/electrique
