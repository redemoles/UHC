
#> uhc:datapack_update/2026/26_9/1
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.9.1
#

scoreboard objectives add uhc.scenario.silent_night dummy

scoreboard players set #update uhc.data.update 26091
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
