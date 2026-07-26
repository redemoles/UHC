
#> uhc:pre_game/menu/load/settings/potion/effect_level_2/apply_change
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #effect_level_2 uhc.data.setup 1
execute if score #effect_level_2 uhc.data.setup matches 2 run scoreboard players set #effect_level_2 uhc.data.setup 0
