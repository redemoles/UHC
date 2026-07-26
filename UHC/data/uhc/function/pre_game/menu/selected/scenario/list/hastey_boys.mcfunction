
#> uhc:pre_game/menu/selected/scenario/list/hastey_boys
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Hastey Boys
#


scoreboard players add #hastey_boys uhc.scenario 1
execute if score #hastey_boys uhc.scenario matches 2 run scoreboard players set #hastey_boys uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"hastey_boys","chat":"Hastey Boys"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
