
#> uhc:datapack_update/2026/26_6/1
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.6.1
#

scoreboard players set #bingo_generator_update uhc.data.update 26060
scoreboard players set #update uhc.data.update 26061
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
