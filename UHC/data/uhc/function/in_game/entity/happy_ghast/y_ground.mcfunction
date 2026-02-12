
#> uhc:in_game/entity/happy_ghast/y_ground
#
# @within			uhc:in_game/entity/happy_ghast/
#
#
# @description		Happy Ghast
#

data modify storage uhc:temp marker merge from entity @s
execute store result score #y_ground uhc.data.temp run data get storage uhc:temp marker.Pos[1]
kill @s
