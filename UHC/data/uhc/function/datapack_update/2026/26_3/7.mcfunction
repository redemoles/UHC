
#> uhc:datapack_update/2026/26_3/7
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.3.7
#

execute if score #bhc bhc.scenario matches 91 run scoreboard players set #bhc bhc.scenario 92

scoreboard players set #update uhc.data.update 26037
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.3.7","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.3.7","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.\n","color":"#FFFFFF"}]
