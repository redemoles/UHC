
#> uhc:in_game/scenario/blood_diamond/step_safe
#
# @within			uhc:in_game/scenario/blood_diamond/progressive_mode
#
#
# @description		Palier 1 - Diamant assuré
#

give @s minecraft:diamond 1
execute if score #double_ores uhc.scenario matches 1 run give @s minecraft:diamond 1

## Joueur
title @s[scores={uhc.scenario.blood_diamond.mined=1}] title [{"text":""}]
function uhc:translation/in_game/scenario/blood_diamond_step_safe
