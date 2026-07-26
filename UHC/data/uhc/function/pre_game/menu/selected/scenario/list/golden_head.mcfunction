
#> uhc:pre_game/menu/selected/scenario/list/golden_head
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Golden Head
#


scoreboard players add #golden_head uhc.scenario 1
execute if score #golden_head uhc.scenario matches 2 run scoreboard players set #golden_head uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"golden_head","chat":"Golden Head"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
