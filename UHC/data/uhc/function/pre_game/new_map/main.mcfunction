
#> uhc:pre_game/new_map/main
#
# @within			uhc:tick
#
#
# @description		Gamemode des joueurs à leur connexion si aucun lobby n'a été créé
#

execute if score #game_progress uhc.game_progress matches 0.. run return fail

execute if entity @s[tag=uhc.temp] run return run function uhc:pre_game/new_map/tp_surface

execute unless score #cancel uhc.game.reset matches 1 in minecraft:overworld run tp @s 0 100 0 0 52.5
execute unless score #cancel uhc.game.reset matches 1 run gamemode spectator @s
tag @s add uhc.temp
