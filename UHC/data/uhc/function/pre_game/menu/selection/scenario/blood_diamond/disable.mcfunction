
#> uhc:pre_game/menu/selection/scenario/blood_diamond/enable
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Blood Diamond
#

data modify storage uhc:temp scenario set value {"internal":"blood_diamond","chat":"Blood Diamond"}
execute unless score #blood_diamond uhc.scenario matches 0 run function uhc:translation/menu/selected/scenario_inverted with storage uhc:temp scenario

scoreboard players set #blood_diamond uhc.scenario 0
scoreboard players set @s uhc.menu.scenario.blood_diamond 1

function uhc:pre_game/menu/load/scenario/blood_diamond/main with storage uhc:scenario blood_diamond
