
#> uhc:in_game/scenario/blood_diamond/step_damage
#
# @within			uhc:in_game/scenario/blood_diamond/progressive_mode
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes hors du Nether
#

scoreboard players add @s uhc.scenario.blood_diamond.damage 1
give @s minecraft:diamond

execute store result storage uhc:temp blood_diamond.damage int 1 run scoreboard players get @s uhc.scenario.blood_diamond.damage
function uhc:in_game/scenario/blood_diamond/step_damage_1 with storage uhc:temp blood_diamond
