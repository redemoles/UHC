
#> uhc:pre_game/menu/selection/scenario/cut_clean
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Cut Clean
#


scoreboard players add #cut_clean uhc.scenario 1
execute if score #cut_clean uhc.scenario matches 2 run scoreboard players set #cut_clean uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"cut_clean","chat":"Cut Clean"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
