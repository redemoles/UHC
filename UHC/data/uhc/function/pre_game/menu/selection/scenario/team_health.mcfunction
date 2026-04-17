
#> uhc:pre_game/menu/selection/scenario/team_health
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Team Health
#


scoreboard players add #team_health uhc.scenario 1
execute if score #team_health uhc.scenario matches 2 run scoreboard players set #team_health uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"team_health","chat":"Team Health"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario

execute if score #team_health uhc.scenario matches 0 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.scenario.team_health.team

execute if score #hp_name uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name
execute if score #team_health uhc.scenario matches 0 if score #hp_name uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 if score #hp_name uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.scenario.team_health.team
execute if score #team_health uhc.scenario matches 0 if score #hp_name uhc.data.setup matches 2 run scoreboard objectives setdisplay below_name uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 if score #hp_name uhc.data.setup matches 2 run scoreboard objectives setdisplay below_name uhc.scenario.team_health.100

execute if score #hp_tab uhc.data.setup matches 0 run scoreboard objectives setdisplay list
execute if score #team_health uhc.scenario matches 0 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.scenario.team_health.team
execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.scenario.team_health.100

execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 0..2 run scoreboard objectives modify uhc.player.health.auto rendertype integer
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 0..2 run scoreboard objectives modify uhc.scenario.team_health.team rendertype integer
execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 3 run scoreboard objectives modify uhc.player.health.auto rendertype hearts
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 3 run scoreboard objectives modify uhc.scenario.team_health.team rendertype hearts
