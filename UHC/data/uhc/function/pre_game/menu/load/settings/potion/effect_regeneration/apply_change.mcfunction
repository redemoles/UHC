
#> uhc:pre_game/menu/load/settings/potion/effect_regeneration/apply_change
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #effect_regeneration uhc.data.setup 1
execute if score #effect_regeneration uhc.data.setup matches 2 run scoreboard players set #effect_regeneration uhc.data.setup 0
