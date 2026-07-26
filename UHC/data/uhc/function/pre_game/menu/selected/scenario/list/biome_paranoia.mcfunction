
#> uhc:pre_game/menu/selected/scenario/list/biome_paranoia
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Blood Cycle
#


scoreboard players add #biome_paranoia uhc.scenario 1
execute if score #biome_paranoia uhc.scenario matches 3 run scoreboard players set #biome_paranoia uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"biome_paranoia","chat":"Biome Paranoia"}
execute unless score #biome_paranoia uhc.scenario matches 2 run function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
