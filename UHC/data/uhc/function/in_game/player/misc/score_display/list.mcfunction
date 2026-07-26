
#> uhc:in_game/player/misc/score_display/list
#
# @within			
#
#
# @description		
#

execute if score #hp_tab uhc.data.setup matches 0 run return run scoreboard objectives setdisplay list
execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 1.. run scoreboard objectives setdisplay list uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 1.. run scoreboard objectives setdisplay list uhc.scenario.team_health.team
execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 1 if score #hp_100 uhc.data.setup matches 1 run scoreboard objectives setdisplay list uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 1 if score #hp_100 uhc.data.setup matches 1 run scoreboard objectives setdisplay list uhc.scenario.team_health.100

execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 1 run scoreboard objectives modify uhc.player.health.auto rendertype integer
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 1 run scoreboard objectives modify uhc.scenario.team_health.team rendertype integer
execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives modify uhc.player.health.auto rendertype hearts
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives modify uhc.scenario.team_health.team rendertype hearts
