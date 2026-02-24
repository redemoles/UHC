
#> uhc:in_game/player/data/pos_only
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

data modify storage uhc:temp player merge from entity @s

# Localisation
execute store result score @s uhc.player.x run data get storage uhc:temp player.Pos[0]
execute store result score @s uhc.player.y run data get storage uhc:temp player.Pos[1]
execute store result score @s uhc.player.z run data get storage uhc:temp player.Pos[2]

scoreboard players set @s uhc.player.data.check 1
