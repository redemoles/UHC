
#> uhc:in_game/scenario/go_to_hell/damage_1
#
# @within			uhc:in_game/scenario/go_to_hell/damage
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes hors du Nether
#

attribute @s minecraft:knockback_resistance modifier add uhc:temp.knockback_resistance 1 add_value
$execute at @s run damage @s $(damage) minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.go_to_hell]
attribute @s minecraft:knockback_resistance modifier remove uhc:temp.knockback_resistance
