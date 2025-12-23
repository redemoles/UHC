
#> uhc:datapack_update/2025/25s44/b
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s44b
#

scoreboard players set #reset uhc.data.update 1

execute if score #game_progress uhc.game_progress matches 1.. run scoreboard players set #warning uhc.data.update 1
execute if score #game_progress uhc.game_progress matches 0 run function uhc:datapack_update/2025/25s44/b_in_lobby
