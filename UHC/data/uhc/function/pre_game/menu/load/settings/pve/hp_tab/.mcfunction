
#> uhc:pre_game/menu/load/settings/pve/hp_tab/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #hp_tab uhc.data.setup 1
execute if score #hp_tab uhc.data.setup matches 4 run scoreboard players set #hp_tab uhc.data.setup 0

function uhc:pre_game/menu/load/settings/menu

execute if score #hp_tab uhc.data.setup matches 0 run scoreboard objectives setdisplay list
execute if score #team_health uhc.scenario matches 0 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health
execute if score #team_health uhc.scenario matches 1 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.scenario.team_health.team
execute if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.100

execute if score #hp_tab uhc.data.setup matches 0 run scoreboard objectives modify uhc.player.health rendertype integer
execute if score #hp_tab uhc.data.setup matches 0 run scoreboard objectives modify uhc.scenario.team_health.team rendertype integer
execute if score #hp_tab uhc.data.setup matches 3 run scoreboard objectives modify uhc.player.health rendertype hearts
execute if score #hp_tab uhc.data.setup matches 3 run scoreboard objectives modify uhc.scenario.team_health.team rendertype hearts

execute if score #hp_tab uhc.data.setup matches 2 run scoreboard players add #hp_100 uhc.data.setup 1
execute if score #hp_tab uhc.data.setup matches 3 run scoreboard players remove #hp_100 uhc.data.setup 1
