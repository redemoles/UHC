
#> uhc:pre_game/menu/load/settings/pve/hp_name/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #hp_name uhc.data.setup 1
execute if score #hp_name uhc.data.setup matches 3 run scoreboard players set #hp_name uhc.data.setup 0

function uhc:pre_game/menu/load/settings/menu

execute if score #hp_name uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name
execute if score #team_health uhc.scenario matches 0 if score #hp_name uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.player.health
execute if score #team_health uhc.scenario matches 1 if score #hp_name uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.scenario.team_health.team
execute if score #hp_name uhc.data.setup matches 2 run scoreboard objectives setdisplay below_name uhc.player.health.100

execute if score #hp_tab uhc.data.setup matches 2 run scoreboard players add #hp_100 uhc.data.setup 1
execute if score #hp_tab uhc.data.setup matches 0 run scoreboard players remove #hp_100 uhc.data.setup 1
