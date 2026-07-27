
#> uhc:pre_game/menu/selected/settings/potion/milk_bucket
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #milk_bucket uhc.data.setup 1
execute if score #milk_bucket uhc.data.setup matches 2 run scoreboard players set #milk_bucket uhc.data.setup 0
