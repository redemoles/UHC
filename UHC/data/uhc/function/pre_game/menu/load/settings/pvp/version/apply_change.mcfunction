
#> uhc:pre_game/menu/load/settings/pvp/version/apply_change
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#


scoreboard players add #version_pvp uhc.data.setup 1
execute if score #version_pvp uhc.data.setup matches 2 run scoreboard players set #version_pvp uhc.data.setup 0
