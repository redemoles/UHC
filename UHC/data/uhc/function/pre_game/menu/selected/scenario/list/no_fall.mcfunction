
#> uhc:pre_game/menu/selection/scenario/list/no_fall
#
# @within			uhc:pre_game/menu/selection/scenario/list/
#
#
# @description		Activation/Désactivation No Fall
#


scoreboard players add #no_fall uhc.scenario 1
execute if score #no_fall uhc.scenario matches 2 run scoreboard players set #no_fall uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"no_fall","chat":"No Fall"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
