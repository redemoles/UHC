
#> uhc:datapack_update/2025/26_1/3
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.1.3
#

scoreboard objectives add bhc.targeted.former_id dummy
scoreboard objectives add bhc.targeter.former_id dummy

execute if score #game_progress uhc.game_progress matches 1.. run return run scoreboard players set #warning uhc.data.update 2

scoreboard players set #update uhc.data.update 26013
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.1.3","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.1.3","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.","color":"#FFFFFF"}]
