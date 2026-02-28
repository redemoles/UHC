
#> uhc:in_game/scenario/sky_high/damage
#
# @within			uhc:in_game/scenario/sky_high/tick
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes sous la couche 150
#

scoreboard players set @s uhc.scenario.sky_high.tick 0
execute if score #damage_type uhc.scenario.sky_high.settings matches 2 run scoreboard players set @s uhc.scenario.sky_high.damage 0
