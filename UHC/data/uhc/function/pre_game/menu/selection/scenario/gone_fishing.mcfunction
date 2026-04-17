
#> uhc:pre_game/menu/selection/scenario/gone_fishing
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Gone Fishing
#


scoreboard players add #gone_fishing uhc.scenario 1
execute if score #gone_fishing uhc.scenario matches 2 run scoreboard players set #gone_fishing uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"gone_fishing","chat":"Gone Fishing"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
