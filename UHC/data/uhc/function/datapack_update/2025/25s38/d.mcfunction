
#> uhc:datapack_update/2025/25s38/c
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s38c
#

execute if score #game_progress uhc.game_progress matches 1.. run return run scoreboard players set #warning uhc.data.update 1
scoreboard players set #update uhc.data.update 25384
