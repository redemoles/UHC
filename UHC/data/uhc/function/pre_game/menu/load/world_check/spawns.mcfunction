
#> uhc:pre_game/menu/load/world_check/spawns
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Vérification des spawns
#

gamemode spectator @s
tag @s add host.check_spawns
scoreboard players set @s uhc.spawn.check 0

execute in minecraft:overworld run function uhc:pre_game/world_check/spawns
