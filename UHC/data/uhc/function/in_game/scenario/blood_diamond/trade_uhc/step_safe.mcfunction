
#> uhc:in_game/scenario/blood_diamond/trade_uhc/step_safe
#
# @within			uhc:in_game/scenario/blood_diamond/blood_diamond/progressive_mode
#
#
# @description		Palier 1 - Diamant assuré
#

give @s minecraft:emerald 1
execute if score #double_ores uhc.scenario matches 1 run give @s minecraft:emerald 1

## Joueur
title @s[scores={uhc.scenario.blood_diamond.mined=1}] title [{"text":""}]
function uhc:translation/in_game/scenario/blood_diamond_trade_uhc_step_safe with storage uhc:scenario blood_diamond
