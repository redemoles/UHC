
#> uhc:in_game/scenario/enchanting_setup/start/1000
#
# @within			uhc:in_game/scenario/enchanting_setup/start/main
#
#
# @description		Pose des tables en (-)1000/(-)1000
#

execute positioned 1000 ~ 1000 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned 1000 ~ -1000 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned -1000 ~ 1000 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned -1000 ~ -1000 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
