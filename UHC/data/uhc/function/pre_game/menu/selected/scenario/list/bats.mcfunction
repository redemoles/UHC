
#> uhc:pre_game/menu/selected/scenario/list/bats
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Bats
#


scoreboard players add #bats uhc.scenario 1
execute if score #bats uhc.scenario matches 2 run scoreboard players set #bats uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"bats","chat":"Bats"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
