
#> uhc:pre_game/menu/selected/scenario/list/bookception
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Bookception
#


scoreboard players add #bookception uhc.scenario 1
execute if score #bookception uhc.scenario matches 2 run scoreboard players set #bookception uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"bookception","chat":"Bookception"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
