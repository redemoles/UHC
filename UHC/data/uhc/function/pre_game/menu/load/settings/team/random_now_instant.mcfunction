
#> uhc:pre_game/menu/load/settings/team/random_now_instant
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s uhc.menu.settings.team 1
scoreboard players set #random_team_start uhc.data.setup 0
execute if score #random_team uhc.data.setup matches 1 run function uhc:pre_game/player_and_team/random_team/1_group/main
execute if score #random_team uhc.data.setup matches 2 run function uhc:pre_game/player_and_team/random_team/2_groups/main

function uhc:pre_game/menu/load/settings/menu
