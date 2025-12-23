
#> uhc:pre_game/new_map/tp_surface
#
# @within			uhc:pre_game/new_map/
#
#
# @description		Gamemode des joueurs à leur connexion si aucun lobby n'a été créé
#

tag @a[tag=uhc.temp] remove uhc.temp
execute if score #game_progress uhc.game_progress matches 0.. run return fail
execute in minecraft:overworld positioned 0 100 0 positioned over world_surface run tp @a[tag=uhc.temp] ~ ~40 ~ 0 45
execute in minecraft:overworld run gamerule spectatorsGenerateChunks true
tag @a add uhc.spec
