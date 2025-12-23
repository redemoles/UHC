
#> uhc:pre_game/new_map/main
#
# @within			uhc:tick
#
#
# @description		Gamemode des joueurs à leur connexion si aucun lobby n'a été créé
#

execute if score #game_progress uhc.game_progress matches 0.. run return fail

execute in minecraft:overworld run tp @s 0 100 0 0 45
gamemode spectator @s
tag @s add uhc.temp

schedule function uhc:pre_game/new_map/tp_surface 1t
