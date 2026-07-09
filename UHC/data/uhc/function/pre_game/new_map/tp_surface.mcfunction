
#> uhc:pre_game/new_map/tp_surface
#
# @within			uhc:pre_game/new_map/
#
#
# @description		Gamemode des joueurs à leur connexion si aucun lobby n'a été créé
#

tag @s remove uhc.temp
execute unless score #cancel uhc.game.reset matches 1 in minecraft:overworld positioned 0 100 0 positioned over world_surface run tp @s ~ ~40 ~ 0 52.5
execute in minecraft:overworld run gamerule minecraft:spectators_generate_chunks true
tag @a add uhc.spec
