
#> uhc:datapack_update/2025/25s51/a
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
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.0.0","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.0.0","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.","color":"#FFFFFF"}]
