
#> uhc:pre_game/menu/selection/scenario/list/double_ores
#
# @within			uhc:pre_game/menu/selection/scenario/list/
#
#
# @description		Activation/Désactivation Doubles Ores
#


scoreboard players add #double_ores uhc.scenario 1
execute if score #double_ores uhc.scenario matches 2 run scoreboard players set #double_ores uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"double_ores","chat":"Double Ores"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
