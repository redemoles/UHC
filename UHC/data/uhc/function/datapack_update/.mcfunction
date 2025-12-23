
#> uhc:datapack_update/
#
# @within			uhc:tick
#
#
# @description		Mise à jour du datapack si non installé
#

scoreboard objectives add uhc.data.update dummy
execute if score @s uhc.player.disconnect matches 1.. run scoreboard players set @s uhc.data.update 0
execute unless score @s uhc.data.update matches 1 run function uhc:datapack_update/list
