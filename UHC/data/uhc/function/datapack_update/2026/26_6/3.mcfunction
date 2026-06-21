
#> uhc:datapack_update/2026/26_6/3
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.6.3
#

scoreboard players set #night_vision uhc.data.setup 1

scoreboard players set #update uhc.data.update 26063
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
