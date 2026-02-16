
#> uhc:in_game/scenario/sky_high/damage_1
#
# @within			uhc:in_game/scenario/sky_high/damage
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes sous la couche 150
#

attribute @s minecraft:knockback_resistance modifier add uhc:temp.knockback_resistance 1 add_value
$execute at @s run damage @s $(damage) minecraft:mob_attack by @n[type=minecraft:marker,tag=scenario.sky_high]
attribute @s minecraft:knockback_resistance modifier remove uhc:temp.knockback_resistance
