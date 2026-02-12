
#> uhc:datapack_update/2026/26_1/9
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.1.9
#

scoreboard objectives add uhc.player.health.20 dummy
scoreboard objectives add uhc.player.data.check dummy
execute if score #shrink_1_dynamic uhc.data.temp matches 1 run scoreboard players set #shrink_dynamic uhc.data.temp 1
execute if score #shrink_2_dynamic uhc.data.temp matches 1 run scoreboard players set #shrink_dynamic uhc.data.temp 2
execute if score #shrink_3_dynamic uhc.data.temp matches 1 run scoreboard players set #shrink_dynamic uhc.data.temp 3

scoreboard players set #update uhc.data.update 26019
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.1.9","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.1.9","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.\n","color":"#FFFFFF"}]
