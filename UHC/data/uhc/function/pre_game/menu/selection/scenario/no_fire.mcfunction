
#> uhc:pre_game/menu/selection/scenario/no_fire
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation No Fall
#


scoreboard players add #no_fire uhc.scenario 1
execute if score #no_fire uhc.scenario matches 2 run scoreboard players set #no_fire uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"no_fire","chat":"No Fire"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
