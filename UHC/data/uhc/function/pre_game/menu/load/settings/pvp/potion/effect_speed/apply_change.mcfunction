
#> uhc:pre_game/menu/load/settings/pvp/potion/effect_speed/apply_change
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #effect_speed uhc.data.setup 1
execute if score #effect_speed uhc.data.setup matches 2 run scoreboard players set #effect_speed uhc.data.setup 0
