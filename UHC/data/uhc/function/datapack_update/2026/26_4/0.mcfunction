
#> uhc:datapack_update/2026/26_4/0
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.4.0
#

execute if score #game_progress uhc.game_progress matches 1 run scoreboard players set #warning uhc.data.update 1

scoreboard players set #update uhc.data.update 26040
