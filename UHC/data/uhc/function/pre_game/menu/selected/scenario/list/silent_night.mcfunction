
#> uhc:pre_game/menu/selected/scenario/list/silent_night
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Perma Day
#


scoreboard players add #silent_night uhc.scenario 1
execute if score #silent_night uhc.scenario matches 2 run scoreboard players set #silent_night uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"silent_night","chat":"Silent Night"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
