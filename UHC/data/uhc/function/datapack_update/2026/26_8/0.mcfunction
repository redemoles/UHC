
#> uhc:datapack_update/2026/26_8/0
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.8.0
#

scoreboard players set #beta_zombies uhc.scenario 0

scoreboard players set #update uhc.data.update 26080
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
