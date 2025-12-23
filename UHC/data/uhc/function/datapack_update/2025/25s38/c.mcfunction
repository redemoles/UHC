
#> uhc:datapack_update/2025/25s38/c
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s38c
#

scoreboard objectives add uhc.game_progress trigger
execute unless score #game_progress uhc.game_progress matches 0.. unless score #start_game uhc.data.temp matches 1.. run scoreboard players set #game_progress uhc.game_progress 0
execute unless score #game_progress uhc.game_progress matches 0.. if score #start_game uhc.data.temp matches 1.. run scoreboard players set #game_progress uhc.game_progress 1
execute unless score #game_progress uhc.game_progress matches 0.. if score #end uhc.game.end matches 1.. run scoreboard players set #game_progress uhc.game_progress 3
execute if score #game_progress uhc.game_progress matches 2.. run scoreboard players operation #seconds uhc.game_progress = #seconds uhc.game.end

scoreboard players set #10k uhc.data.numbers 10000

scoreboard players set #reset uhc.data.update 2

execute if score #game_progress uhc.game_progress matches 1.. run scoreboard players set #warning uhc.data.update 2
execute if score #game_progress uhc.game_progress matches 0 run scoreboard players set #update uhc.data.update 25383
