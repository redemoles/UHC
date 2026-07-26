
#> uhc:in_game/player/misc/score_display/below_name
#
# @within			
#
#
# @description		
#

execute if score #hp_name uhc.data.setup matches 0 run return run scoreboard objectives setdisplay below_name
execute if score #team_health uhc.scenario matches 0 if score #hp_100 uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 if score #hp_100 uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name uhc.scenario.team_health.team
execute if score #team_health uhc.scenario matches 0 if score #hp_100 uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 if score #hp_100 uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.scenario.team_health.100
