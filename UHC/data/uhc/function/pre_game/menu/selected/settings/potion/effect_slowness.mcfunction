
#> uhc:pre_game/menu/selected/settings/potion/effect_slowness
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #effect_slowness uhc.data.setup 1
execute if score #effect_slowness uhc.data.setup matches 2 run scoreboard players set #effect_slowness uhc.data.setup 0
