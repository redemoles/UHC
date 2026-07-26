
#> uhc:pre_game/menu/selected/settings/misc/team_stuff/tracker_allies
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #tracker_allies uhc.data.setup 1
execute if score #tracker_allies uhc.data.setup matches 2 run scoreboard players set #tracker_allies uhc.data.setup 0
