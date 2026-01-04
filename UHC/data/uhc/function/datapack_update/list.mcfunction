
#> uhc:datapack_update/list
#
# @within			uhc:datapack_update/
#
#
# @description		Mise à jour du datapack si non installé
#

scoreboard players set @s uhc.data.update 1

execute unless score #update uhc.data.update matches 25383.. run function uhc:datapack_update/2025/25s38/c
execute if score #update uhc.data.update matches 25383..25504 run function uhc:datapack_update/2025/list
execute if score #update uhc.data.update matches 25505..26530 run function uhc:datapack_update/2026/list

execute if score #game_progress uhc.game_progress matches 1.. run function uhc:datapack_update/in_game
execute if score #game_progress uhc.game_progress matches 0 if score #reset uhc.data.update matches 1 run function uhc:datapack_update/reset/
execute if score #game_progress uhc.game_progress matches 0 if score #reset uhc.data.update matches 2 run function uhc:datapack_update/reset/full
