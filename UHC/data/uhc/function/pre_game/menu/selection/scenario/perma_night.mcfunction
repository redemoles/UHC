
#> uhc:pre_game/menu/selection/scenario/perma_night
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Perma Night
#


scoreboard players add #perma_night uhc.scenario 1
execute if score #perma_night uhc.scenario matches 2 run scoreboard players set #perma_night uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"perma_night","chat":"Perma Night"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario

execute if score #perma_day uhc.scenario matches 1 if score #perma_night uhc.scenario matches 1 run function uhc:pre_game/menu/selection/scenario/perma_day
