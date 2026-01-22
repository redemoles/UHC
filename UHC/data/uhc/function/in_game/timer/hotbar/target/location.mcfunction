
#> uhc:in_game/timer/hotbar/target/location
#
# @within			uhc:in_game/timer/tick
#
#
# @description      Position des joueurs
#

data modify storage uhc:temp player merge from entity @s
execute store result score @s uhc.player.x run data get storage uhc:temp player.Pos[0]
execute store result score @s uhc.player.y run data get storage uhc:temp player.Pos[1]
execute store result score @s uhc.player.z run data get storage uhc:temp player.Pos[2]
execute store result storage uhc:temp target.angle int 10 run data get storage uhc:temp player.Rotation[0]
execute store result score @s uhc.player.rotation run data get storage uhc:temp target.angle
tag @s add uhc.player.location_check
