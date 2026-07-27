
#> uhc:pre_game/menu/selected/settings/potion/effect_speed
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #effect_speed uhc.data.setup 1
execute if score #effect_speed uhc.data.setup matches 2 run scoreboard players set #effect_speed uhc.data.setup 0
