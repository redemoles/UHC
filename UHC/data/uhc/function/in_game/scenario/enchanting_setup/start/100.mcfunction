
#> uhc:in_game/scenario/enchanting_setup/start/100
#
# @within			uhc:in_game/scenario/enchanting_setup/start/main
#
#
# @description		Pose des tables en (-)100/(-)100
#

execute positioned 100 ~ 100 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned 100 ~ -100 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned -100 ~ 100 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
execute positioned -100 ~ -100 positioned over motion_blocking unless block ~ ~-1 ~ minecraft:enchanting_table run setblock ~ ~ ~ minecraft:enchanting_table
