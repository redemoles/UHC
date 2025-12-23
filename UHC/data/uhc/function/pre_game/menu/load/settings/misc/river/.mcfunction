
#> uhc:pre_game/menu/load/settings/misc/river/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#


scoreboard players add #river_solid uhc.data.setup 1
execute if score #river_solid uhc.data.setup matches 2 run scoreboard players set #river_solid uhc.data.setup 0
