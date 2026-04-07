
#> uhc:datapack_update/2026/26_4/2
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.4.2
#

scoreboard objectives add uhc.menu.scenario.restricted_area dummy

scoreboard players set #double_ores uhc.scenario 0
scoreboard players set #hastey_boys uhc.scenario 0
scoreboard players set #no_fire uhc.scenario 0

execute as @a run attribute @s minecraft:fall_damage_multiplier base set 1.0

scoreboard players set #update uhc.data.update 26042
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.2","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.2","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.\n","color":"#FFFFFF"}]
