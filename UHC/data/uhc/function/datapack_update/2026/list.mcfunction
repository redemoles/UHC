
#> uhc:datapack_update/2026/list
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack si non installé
#

execute if score #update uhc.data.update matches 25505..26009 run function uhc:datapack_update/2026/26_1/0
execute if score #update uhc.data.update matches 26010 run function uhc:datapack_update/2026/26_1/1
execute if score #update uhc.data.update matches 26011 run function uhc:datapack_update/2026/26_1/2
execute if score #update uhc.data.update matches 26012 run function uhc:datapack_update/2026/26_1/3
execute if score #update uhc.data.update matches 26013 run function uhc:datapack_update/2026/26_1/4
execute if score #update uhc.data.update matches 26014 run function uhc:datapack_update/2026/26_1/5
