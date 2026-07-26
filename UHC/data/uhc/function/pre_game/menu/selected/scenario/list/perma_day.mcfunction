
#> uhc:pre_game/menu/selected/scenario/list/perma_day
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Perma Day
#


scoreboard players add #perma_day uhc.scenario 1
execute if score #perma_day uhc.scenario matches 2 run scoreboard players set #perma_day uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"perma_day","chat":"Perma Day"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario

execute if score #perma_day uhc.scenario matches 1 if score #perma_night uhc.scenario matches 1 run function uhc:pre_game/menu/selected/scenario/list/perma_night
