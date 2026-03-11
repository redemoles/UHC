
#> uhc:datapack_update/2026/26_3/3
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.3.3
#

scoreboard objectives add uhc.scenario.blood_diamond.setup dummy
scoreboard players set #tier_2_damage uhc.scenario.blood_diamond.setup 20
scoreboard players set #tier_2_gold_ingot uhc.scenario.blood_diamond.setup 20
scoreboard players set #tier_2_diamond uhc.scenario.blood_diamond.setup 40
scoreboard players set #tier_2_gift uhc.scenario.blood_diamond.setup 20
scoreboard players set #effect_speed uhc.data.setup 1
scoreboard players set #effect_strength uhc.data.setup 1

scoreboard players set #update uhc.data.update 26033
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.3.3","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.3.3","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.\n","color":"#FFFFFF"}]
