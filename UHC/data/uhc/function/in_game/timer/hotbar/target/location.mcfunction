
#> uhc:in_game/timer/hotbar/target/location
#
# @within			uhc:in_game/timer/tick
#
#
# @description      Position des joueurs
#

execute store result score @s uhc.player.x run data get entity @s Pos[0]
execute store result score @s uhc.player.y run data get entity @s Pos[1]
execute store result score @s uhc.player.z run data get entity @s Pos[2]
tag @s add uhc.player.location_check
