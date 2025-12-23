
#> uhc:datapack_update/2025/25s50/d
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s50d
#

scoreboard players set #reset uhc.data.update 1
scoreboard players set #river_solid uhc.data.setup 0

execute if score #game_progress uhc.game_progress matches 1.. run return run scoreboard players set #warning uhc.data.update 1

scoreboard players set #update uhc.data.update 25504
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 25s50d","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 25s50d","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.","color":"#FFFFFF"}]
