
#> uhc:datapack_update/2026/list
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack si non installé
#

execute if score #update uhc.data.update matches 25505..26009 run function uhc:datapack_update/2026/26_1/0
