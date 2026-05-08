
#> uhc:pre_game/menu/load/settings/potion/effect_fire_resistance/apply_change
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #effect_fire_resistance uhc.data.setup 1
execute if score #effect_fire_resistance uhc.data.setup matches 2 run scoreboard players set #effect_fire_resistance uhc.data.setup 0
