
#> uhc:pre_game/menu/selection/scenario/list/team_health
#
# @within			uhc:pre_game/menu/selection/scenario/list/
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

function uhc:in_game/player/misc/score_display/below_name
function uhc:in_game/player/misc/score_display/list
