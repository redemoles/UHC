
#> uhc:pre_game/menu/selected/settings/potion/effect_harming
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #effect_harming uhc.data.setup 1
execute if score #effect_harming uhc.data.setup matches 2 run scoreboard players set #effect_harming uhc.data.setup 0
