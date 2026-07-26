
#> uhc:in_game/scenario/enchanting_setup/start/500
#
# @within			uhc:in_game/scenario/enchanting_setup/start/main
#
#
# @description		Pose des tables en (-)500/(-)500
#

execute positioned 500 ~ 500 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned 500 ~ -500 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned -500 ~ 500 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned -500 ~ -500 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
