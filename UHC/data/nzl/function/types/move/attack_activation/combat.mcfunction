
#> nzl:types/move/attack_activation/combat
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
scoreboard players set #seconds nzl.attack.length.02 20
scoreboard players operation @s nzl.attack.length.02 = #seconds nzl.attack.length.02
scoreboard players operation @s nzl.attack.length.02 *= #20 uhc.data.numbers
tellraw @p[scores={nzl.type.player=02,uhc.player.lang=061801},predicate=uhc:id_team] [{"text":"\nAttaque activée.","color":"#3F9FFF","bold":true},{"text":"\nDurée : ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.02"},"color":"#FF3F3F","bold":false},{"text":" secondes.\n","color":"#7FBFFF","bold":false}]
tellraw @p[scores={nzl.type.player=02,uhc.player.lang=051407},predicate=uhc:id_team] [{"text":"\nAttack activated.","color":"#3F9FFF","bold":true},{"text":"\nDuration: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.02"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 0.5 1 0.5
scoreboard players set @s nzl.attack.cooldown.02 300
scoreboard players operation @s nzl.attack.cooldown.02 *= #20 uhc.data.numbers

scoreboard players operation @s nzl.attack.length > @s nzl.attack.length.02
scoreboard players operation @s nzl.attack.cooldown > @s nzl.attack.cooldown.02
