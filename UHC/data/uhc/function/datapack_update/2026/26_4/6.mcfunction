
#> uhc:datapack_update/2026/26_4/6
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.4.6
#

scoreboard objectives add uhc.menu.revive trigger
scoreboard objectives add uhc.id.spawn.x dummy
scoreboard objectives add uhc.id.spawn.z dummy
scoreboard objectives add uhc.id.spawn.x.temp dummy
scoreboard objectives add uhc.id.spawn.z.temp dummy

scoreboard players operation #3_lives_left uhc.data.temp = #live_3 uhc.data.temp
scoreboard players operation #2_lives_left uhc.data.temp = #live_2 uhc.data.temp
scoreboard players operation #1_life_left uhc.data.temp = #live_1 uhc.data.temp

scoreboard players operation #3_lives_left uhc.data.setup = #live_3 uhc.data.setup
scoreboard players operation #2_lives_left uhc.data.setup = #live_2 uhc.data.setup
scoreboard players operation #1_life_left uhc.data.setup = #live_1 uhc.data.setup

scoreboard players set #reset uhc.data.update 1
scoreboard players set #warning uhc.data.update 2

scoreboard players set #update uhc.data.update 26046
