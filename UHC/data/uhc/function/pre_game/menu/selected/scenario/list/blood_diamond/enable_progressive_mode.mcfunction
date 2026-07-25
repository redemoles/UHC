
#> uhc:pre_game/menu/selection/scenario/list/blood_diamond/enable_progressive_mode
#
# @within			uhc:pre_game/menu/selection/scenario/list/
#
#
# @description		Activation/Désactivation Blood Diamond
#

data modify storage uhc:temp scenario set value {"internal":"blood_diamond","chat":"Blood Diamond"}
execute unless score #blood_diamond uhc.scenario matches 2 run function uhc:translation/menu/selected/scenario_inverted with storage uhc:temp scenario

execute if score @s uhc.menu.gamemode.bhc matches 1 run scoreboard players set #blood_diamond uhc.scenario 1
execute if score @s uhc.menu.scenario.blood_diamond matches 2.. if score #blood_diamond uhc.scenario matches 1 run scoreboard players set #blood_diamond uhc.scenario 0
execute if score @s uhc.menu.scenario.blood_diamond matches 2.. if score #blood_diamond uhc.scenario matches 2 run scoreboard players set #blood_diamond uhc.scenario 1
execute if score @s uhc.menu.scenario.blood_diamond matches 1 run scoreboard players set #blood_diamond uhc.scenario 1
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. if score #blood_diamond uhc.scenario matches 0 run scoreboard players set @s uhc.menu.scenario.blood_diamond 1
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. if score #blood_diamond uhc.scenario matches 1.. run scoreboard players set @s uhc.menu.scenario.blood_diamond 2

execute if score @s uhc.menu.scenario.blood_diamond matches 1.. run function uhc:pre_game/menu/load/scenario/blood_diamond
