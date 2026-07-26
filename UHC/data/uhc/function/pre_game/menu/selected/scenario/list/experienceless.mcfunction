
#> uhc:pre_game/menu/selected/scenario/list/experienceless
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Experienceless
#


scoreboard players add #experienceless uhc.scenario 1
execute if score #experienceless uhc.scenario matches 2 run scoreboard players set #experienceless uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"experienceless","chat":"Experienceless"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
