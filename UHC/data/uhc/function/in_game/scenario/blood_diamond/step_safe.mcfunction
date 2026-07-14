
#> uhc:in_game/scenario/blood_diamond/step_safe
#
# @within			uhc:in_game/scenario/blood_diamond/progressive_mode
#
#
# @description		Palier 1 - Diamant assuré
#

function uhc:in_game/player/misc/ore_mined/diamond_main

## Joueur
title @s[scores={uhc.scenario.blood_diamond.mined=1}] title [{"text":""}]
function uhc:translation/in_game/scenario/blood_diamond_step_safe with storage uhc:scenario blood_diamond
