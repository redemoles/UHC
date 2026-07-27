
#> uhc:pre_game/menu/selected/settings/potion/compatibility
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #effect_compatibility_speed_strength uhc.data.setup 1
execute if score #effect_compatibility_speed_strength uhc.data.setup matches 2 run scoreboard players set #effect_compatibility_speed_strength uhc.data.setup 0
