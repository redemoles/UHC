
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/horse/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #horse_limit uhc.data.setup 1
execute if score #horse_limit uhc.data.setup matches 2 run scoreboard players set #horse_limit uhc.data.setup 0
