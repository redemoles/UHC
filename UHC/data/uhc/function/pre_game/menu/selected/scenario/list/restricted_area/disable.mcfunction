
#> uhc:pre_game/menu/selected/scenario/list/restricted_area/disabled
#
# @within			uhc:pre_game/menu/selected/scenario/pages/*
#			
#
# @description		Redirection
#

execute if score #go_to_hell uhc.scenario matches 1 run data modify storage uhc:temp scenario set value {"internal":"go_to_hell","chat":"Go To Hell"}
execute if score #go_to_hell uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run function uhc:translation/menu/selected/scenario_inverted with storage uhc:temp scenario
execute if score #sky_high uhc.scenario matches 1 run data modify storage uhc:temp scenario set value {"internal":"sky_high","chat":"Sky High"}
execute if score #sky_high uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run function uhc:translation/menu/selected/scenario_inverted with storage uhc:temp scenario

scoreboard players set #go_to_hell uhc.scenario 0
scoreboard players set #sky_high uhc.scenario 0

scoreboard players set @s uhc.menu.scenario.restricted_area 1
