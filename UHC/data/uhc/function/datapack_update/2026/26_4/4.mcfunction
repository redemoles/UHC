
#> uhc:datapack_update/2026/26_4/3
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.4.4
#

execute if score #game_progress uhc.game_progress matches 1 run scoreboard players set #warning uhc.data.update 2
scoreboard players operation #lives uhc.data.temp = #lives uhc.player.lives

scoreboard objectives add uhc.player.death.temp deathCount
scoreboard objectives add uhc.player.death.summary dummy

scoreboard players set #update uhc.data.update 26044
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.4","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.4","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.\n","color":"#FFFFFF"}]
