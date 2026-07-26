
#> uhc:pre_game/menu/selected/scenario/list/team_health
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Team Health
#


scoreboard players add #team_health uhc.scenario 1
execute if score #team_health uhc.scenario matches 2 run scoreboard players set #team_health uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"team_health","chat":"Team Health"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario

function uhc:in_game/player/misc/score_display/below_name
function uhc:in_game/player/misc/score_display/list
