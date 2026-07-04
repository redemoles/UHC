
#> uhc:datapack_update/2026/26_7/0
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.7.0
#

data modify storage uhc:settings gamemode set value {}
function uhc:translation/menu/selected/gamemode_text_main

scoreboard players set #update uhc.data.update 26070
