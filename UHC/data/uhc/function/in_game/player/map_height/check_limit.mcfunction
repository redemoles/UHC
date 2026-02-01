
#> uhc:in_game/player/map_height/check_limit
#
# @within			uhc:in_game/player/tick
#
#
# @description		Vérifie la hauteur du joueur
#

data modify storage uhc:temp player merge from entity @s
execute store result score #temp_y uhc.data.temp run data get storage uhc:temp player.Pos[1]

execute if score #temp_y uhc.data.temp > #map_height_limit_above uhc.data.temp run return run function uhc:in_game/player/map_height/above
execute if score #temp_y uhc.data.temp < #map_height_limit_below uhc.data.temp run return run function uhc:in_game/player/map_height/below

scoreboard players set @s uhc.player.map_height.sound 0
scoreboard players set @s uhc.player.map_height.text 0
execute if score @s uhc.player.map_height.effect matches 1.. run scoreboard players remove @s uhc.player.map_height.effect 1
execute unless score @s uhc.player.map_height.effect matches 1.. run scoreboard players set @s uhc.player.map_height.effect 0
