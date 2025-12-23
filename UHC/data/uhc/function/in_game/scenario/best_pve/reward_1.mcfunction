
#> uhc:in_game/scenario/best_pve/reward_1
#
# @within			uhc:in_game/scenario/best_pve/reward
#
#
# @description		Donne 1 coeur max supplémentaire
#

$attribute @s minecraft:max_health base set $(value)
effect give @s minecraft:regeneration 3 1 true
