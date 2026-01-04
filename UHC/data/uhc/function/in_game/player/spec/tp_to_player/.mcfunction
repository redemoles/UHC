
#> uhc:in_game/player/spec/tp_to_player/
#
# @within			uhc:in_game/player/tick
#
#
# @description		Téléportation d'un spectateur à un joueur
#

execute if entity @s[tag=uhc.spec] store result storage uhc:temp tp.id int 1 run scoreboard players get @s uhc.spec.tp
execute if entity @s[tag=uhc.spec] run function uhc:in_game/player/spec/tp_to_player/tp with storage uhc:temp tp
scoreboard players set @s uhc.spec.tp 0
scoreboard players enable @s uhc.spec.tp
