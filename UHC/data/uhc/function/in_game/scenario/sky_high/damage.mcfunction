
#> uhc:in_game/scenario/sky_high/damage
#
# @within			uhc:in_game/scenario/sky_high/tick
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes sous la couche 150
#

scoreboard players add @s uhc.scenario.sky_high.tick 1
execute unless score @s uhc.scenario.sky_high.tick matches 600.. run return fail

scoreboard players set @s uhc.scenario.sky_high.tick 0
execute if score #damage_type uhc.scenario.sky_high.settings matches 1 run scoreboard players set @s uhc.scenario.sky_high.damage 1
execute if score #damage_type uhc.scenario.sky_high.settings matches 2.. run scoreboard players add @s uhc.scenario.sky_high.damage 1

function uhc:translation/in_game/scenario/sky_high

execute store result storage uhc:sky_high damage int 1 run scoreboard players get @s uhc.scenario.sky_high.damage
function uhc:in_game/scenario/sky_high/damage_1 with storage uhc:sky_high
