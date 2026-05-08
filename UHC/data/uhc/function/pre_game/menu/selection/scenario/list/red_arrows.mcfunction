
#> uhc:pre_game/menu/selection/scenario/list/red_arrows
#
# @within			uhc:pre_game/menu/selection/scenario/list/
#
#
# @description		Activation/Désactivation Red Arrows
#


scoreboard players add #red_arrows uhc.scenario 1
execute if score #red_arrows uhc.scenario matches 2 run scoreboard players set #red_arrows uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"red_arrows","chat":"Red Arrows"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
