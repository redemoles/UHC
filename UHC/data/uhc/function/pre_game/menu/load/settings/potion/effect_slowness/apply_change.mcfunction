
#> uhc:pre_game/menu/load/settings/potion/effect_slowness/apply_change
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #effect_slowness uhc.data.setup 1
execute if score #effect_slowness uhc.data.setup matches 2 run scoreboard players set #effect_slowness uhc.data.setup 0
