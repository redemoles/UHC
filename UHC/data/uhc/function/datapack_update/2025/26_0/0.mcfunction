
#> uhc:datapack_update/2025/26_0/0
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.0.0
#

scoreboard objectives add uhc.player.lang dummy
scoreboard players operation @a uhc.player.lang = @a uhc.player.lang

scoreboard players set #reset uhc.data.update 2
scoreboard players set #game_progress uhc.game_progress 0

scoreboard players set #update uhc.data.update 25511
