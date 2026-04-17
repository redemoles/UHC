
#> uhc:pre_game/menu/selection/scenario/permakill
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Permakill
#


scoreboard players add #permakill uhc.scenario 1
execute if score #permakill uhc.scenario matches 2 run scoreboard players set #permakill uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"permakill","chat":"Perma Kill"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
