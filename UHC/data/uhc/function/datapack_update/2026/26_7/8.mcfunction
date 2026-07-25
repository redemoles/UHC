
#> uhc:datapack_update/2026/26_7/8
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.7.8
#

scoreboard objectives add uhc.menu.gamemode.main dummy

scoreboard players set #update uhc.data.update 26078
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
