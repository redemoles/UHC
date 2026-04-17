
#> uhc:pre_game/menu/selection/scenario/best_pve
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Best PvE
#


scoreboard players add #best_pve uhc.scenario 1
execute if score #best_pve uhc.scenario matches 2 run scoreboard players set #best_pve uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"best_pve","chat":"Best PvE"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
