
#> uhc:datapack_update/2026/26_4/4
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
