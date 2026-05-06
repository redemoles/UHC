
#> uhc:datapack_update/2026/26_5/1
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.5.1
#

scoreboard objectives add uhc.player.death.message deathCount

scoreboard players operation #death_message uhc.data.setup = #message uhc.data.setup
scoreboard players operation #death_message uhc.data.temp = #message uhc.data.setup

scoreboard players set #wolf_armor uhc.data.setup 1

scoreboard players set #perma_day uhc.scenario 0
scoreboard players set #perma_night uhc.scenario 0
scoreboard players set #silent_night uhc.scenario 0

scoreboard players set #update uhc.data.update 26051

execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
