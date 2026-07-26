
#> uhc:pre_game/menu/selected/settings/misc/team_stuff/friendly_fire
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #friendly_fire uhc.data.setup 1
execute if score #friendly_fire uhc.data.setup matches 2 run scoreboard players set #friendly_fire uhc.data.setup 0
