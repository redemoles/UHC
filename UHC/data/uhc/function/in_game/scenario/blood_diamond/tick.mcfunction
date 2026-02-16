
#> uhc:in_game/scenario/blood_diamond/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Choix aléatoire de l'effet du Blood Diamond
#

scoreboard players set @s uhc.scenario.blood_diamond.deepslate 0
scoreboard players set @s uhc.scenario.blood_diamond.temp 0
scoreboard players add @s uhc.scenario.blood_diamond.mined 1

execute if score #blood_diamond uhc.scenario matches 1 run function uhc:in_game/scenario/blood_diamond/progressive_mode with storage uhc:temp blood_diamond
execute if score #blood_diamond uhc.scenario matches 2 run attribute @s minecraft:knockback_resistance modifier add uhc:temp.knockback_resistance 1 add_value
execute if score #blood_diamond uhc.scenario matches 2 at @s run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=scenario.blood_diamond]
execute if score #blood_diamond uhc.scenario matches 2 run attribute @s minecraft:knockback_resistance modifier remove uhc:temp.knockback_resistance
