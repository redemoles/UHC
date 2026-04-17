
#> uhc:pre_game/menu/selection/settings/misc/team_stuff/friendly_fire
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #friendly_fire uhc.data.setup 1
execute if score #friendly_fire uhc.data.setup matches 2 run scoreboard players set #friendly_fire uhc.data.setup 0
