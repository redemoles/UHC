
#> uhc:in_game/scenario/blood_diamond/step_damage
#
# @within			uhc:in_game/scenario/blood_diamond/progressive_mode
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes hors du Nether
#

scoreboard players add @s uhc.scenario.blood_diamond.damage 1
execute if score #double_ores uhc.scenario matches 1 run give @s minecraft:diamond 1

execute store result storage uhc:scenario blood_diamond.damage int 1 run scoreboard players get @s uhc.scenario.blood_diamond.damage
function uhc:in_game/scenario/blood_diamond/step_damage_1 with storage uhc:scenario blood_diamond
