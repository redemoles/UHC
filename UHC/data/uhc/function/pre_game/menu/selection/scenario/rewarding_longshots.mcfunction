
#> uhc:pre_game/menu/selection/scenario/rewarding_longshots
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Rewarding Longshots
#


scoreboard players add #rewarding_longshots uhc.scenario 1
execute if score #rewarding_longshots uhc.scenario matches 2 run scoreboard players set #rewarding_longshots uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"rewarding_longshots","chat":"Rewarding Longshots"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
