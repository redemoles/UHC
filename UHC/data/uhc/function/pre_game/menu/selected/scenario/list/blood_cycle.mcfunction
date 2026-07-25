
#> uhc:pre_game/menu/selection/scenario/list/blood_cycle
#
# @within			uhc:pre_game/menu/load/scenario/blood_diamond
#
#
# @description		Activation/Désactivation Blood Cycle
#


scoreboard players add #blood_cycle uhc.scenario 1
execute if score #blood_cycle uhc.scenario matches 2 run scoreboard players set #blood_cycle uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"blood_cycle","chat":"Blood Cycle"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
