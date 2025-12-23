
#> uhc:datapack_update/2025/25s39/a
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s39a
#

scoreboard players set #200 uhc.data.numbers 200
scoreboard players set #reset uhc.data.update 1

execute if score #game_progress uhc.game_progress matches 1.. run scoreboard players set #warning uhc.data.update 2
execute if score #game_progress uhc.game_progress matches 0 run scoreboard players set #update uhc.data.update 25392
