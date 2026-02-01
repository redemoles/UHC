
#> uhc:in_game/entity/happy_ghast/
#
# @within			uhc:in_game/timer/second
#
#
# @description		Happy Ghast
#

data modify storage uhc:temp player merge from entity @s
execute store result score #y_ghast uhc.data.temp run data get storage uhc:temp player.Pos[1]
execute at @s positioned over world_surface summon minecraft:marker run function uhc:in_game/entity/happy_ghast/y_ground
scoreboard players operation #y_ghast uhc.data.temp -= #y_ground uhc.data.temp
execute if score #y_ghast uhc.data.temp matches 48.. run data modify entity @s Motion[1] set value -1.0d
