
#> uhc:datapack_update/2025/25s42/c
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s42c
#

scoreboard objectives add uhc.team.kills dummy
scoreboard objectives add uhc.best_pve.list trigger
scoreboard objectives add uhc.ironman.list trigger
scoreboard objectives add uhc.night_vision trigger
scoreboard players enable @a uhc.best_pve.list
scoreboard players enable @a uhc.ironman.list
scoreboard players enable @a uhc.night_vision
tag @a[tag=uhc.player.night_vision] add uhc.night_vision
execute if score #pvp uhc.data.temp matches 1.. run gamerule pvp false

scoreboard players set #update uhc.data.update 25423
