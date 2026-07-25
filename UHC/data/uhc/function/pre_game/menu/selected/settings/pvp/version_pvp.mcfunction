
#> uhc:pre_game/menu/selection/settings/pvp/version_pvp
#
# @within			uhc:pre_game/menu/selection/settings/pvp/host
#
#
# @description		Menu
#


scoreboard players add #version_pvp uhc.data.setup 1
execute if score #version_pvp uhc.data.setup matches 2 run scoreboard players set #version_pvp uhc.data.setup 0
