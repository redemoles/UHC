
#> uhc:in_game/player/data/main
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

data modify storage uhc:temp player merge from entity @s

# Vie
execute store result score @s uhc.player.health.100 run data get storage uhc:temp player.Health 5

# Localisation
execute store result score @s uhc.player.x run data get storage uhc:temp player.Pos[0]
execute store result score @s uhc.player.y run data get storage uhc:temp player.Pos[1]
execute store result score @s uhc.player.z run data get storage uhc:temp player.Pos[2]

# Angle
execute store result storage uhc:temp target.angle int 10 run data get storage uhc:temp player.Rotation[0]
execute store result score @s uhc.player.rotation run data get storage uhc:temp target.angle

scoreboard players set @s uhc.player.data.check 1
