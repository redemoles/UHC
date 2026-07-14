
#> uhc:in_game/scenario/blood_diamond/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Choix aléatoire de l'effet du Blood Diamond
#

scoreboard players add @s uhc.scenario.blood_diamond.mined 1

execute if score #diamond_limit uhc.scenario matches 1 unless score @s uhc.player.mined.diamond <= #diamond_limit uhc.scenario.ores_limit.setup run return fail

execute if score #blood_diamond uhc.scenario matches 1 run function uhc:in_game/scenario/blood_diamond/progressive_mode with storage uhc:scenario blood_diamond
execute if score #blood_diamond uhc.scenario matches 2 run attribute @s minecraft:knockback_resistance modifier add uhc.knockback_resistance.temp 1 add_value
execute if score #blood_diamond uhc.scenario matches 2 at @s run damage @s 1 minecraft:generic_kill by @n[type=minecraft:marker,tag=uhc.scenario.blood_diamond]
execute if score #blood_diamond uhc.scenario matches 2 run attribute @s minecraft:knockback_resistance modifier remove uhc.knockback_resistance.temp
