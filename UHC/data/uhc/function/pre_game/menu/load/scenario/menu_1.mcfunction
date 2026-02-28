
#> uhc:pre_game/menu/load/scenario/menu_1
#
# @within			uhc:pre_game/menu/selection/main/host
#
#
# @description		Redirection
#

data modify storage uhc:temp scenario.blood_diamond_end_tier_1 set from storage uhc:scenario blood_diamond.end_tier_1
data modify storage uhc:temp scenario.blood_diamond_end_tier_2 set from storage uhc:scenario blood_diamond.end_tier_2
data modify storage uhc:temp scenario.blood_diamond_mined_tier_2 set from storage uhc:scenario blood_diamond.mined_tier_2

data modify storage uhc:temp scenario.go_to_hell_timer set from storage uhc:scenario go_to_hell.timer

execute as @s[scores={uhc.player.lang=061801}] run function uhc:pre_game/menu/load/scenario/menu_1_1fra with storage uhc:temp scenario
execute as @s[scores={uhc.player.lang=051407}] run function uhc:pre_game/menu/load/scenario/menu_1_2eng with storage uhc:temp scenario
