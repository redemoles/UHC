
#> uhc:in_game/scenario/sky_high/damage_1
#
# @within			uhc:in_game/scenario/sky_high/damage
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes sous la couche 150
#

attribute @s minecraft:knockback_resistance modifier add uhc.knockback_resistance.temp 1 add_value
$execute at @s run damage @s $(damage) minecraft:generic_kill by @n[type=minecraft:marker,tag=uhc.scenario.sky_high]
attribute @s minecraft:knockback_resistance modifier remove uhc.knockback_resistance.temp
