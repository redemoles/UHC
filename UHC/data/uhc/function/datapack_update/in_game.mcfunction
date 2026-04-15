
#> uhc:datapack_update/in_game
#
# @within			uhc:datapack_update/...
#
#
# @description		Report de la mise à jour du datapack
#

execute if score #warning uhc.data.update matches 1.. as @s[tag=uhc.host] run function uhc:translation/datapack_update_in_game
scoreboard players set #warning uhc.data.update 0
