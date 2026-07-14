
#> uhc:datapack_update/2026/26_7/6
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.7.6
#

scoreboard players set #ores_limit uhc.scenario 0
scoreboard players set #gold_limit uhc.scenario 0
scoreboard players set #diamond_limit uhc.scenario 0

scoreboard objectives add uhc.scenario.blood_diamond.temp dummy

scoreboard objectives add uhc.scenario.ores_limit.setup dummy
scoreboard players set #gold_limit uhc.scenario.ores_limit.setup 64
scoreboard players set #diamond_limit uhc.scenario.ores_limit.setup 18
execute store result storage uhc:scenario ores_limit.gold int 1 run scoreboard players get #gold_limit uhc.scenario.ores_limit.setup
execute store result storage uhc:scenario ores_limit.diamond int 1 run scoreboard players get #diamond_limit uhc.scenario.ores_limit.setup

scoreboard objectives add uhc.menu.scenario.ores_limit dummy

scoreboard players set #update uhc.data.update 26076
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
