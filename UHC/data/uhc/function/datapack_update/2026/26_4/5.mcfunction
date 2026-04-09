
#> uhc:datapack_update/2026/26_4/5
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.4.5
#

scoreboard objectives add uhc.menu.default_language dummy
scoreboard players set #reset uhc.data.update 1

scoreboard players set #update uhc.data.update 26045
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.5","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.5","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.\n","color":"#FFFFFF"}]
