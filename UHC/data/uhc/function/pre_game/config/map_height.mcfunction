
#> uhc:pre_game/config/map_height
#
# @within			 uhc:pre_game/config/data_setup
#
#
# @description		Calcul de la hauteur de la map
#

forceload add -32 -32 31 31

# Hauteur 0;0
execute positioned 0 ~ 0 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.00 int 1 store result score #map_height_00 uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur 32;0
execute positioned 32 ~ 0 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.+0 int 1 store result score #map_height_+0 uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur 0;32
execute positioned 0 ~ 32 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.0+ int 1 store result score #map_height_0+ uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur -32;0
execute positioned -32 ~ 0 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.-0 int 1 store result score #map_height_-0 uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur 0;-32
execute positioned 0 ~ -32 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.0- int 1 store result score #map_height_0- uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur 32;32
execute positioned 32 ~ 32 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.++ int 1 store result score #map_height_++ uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur 32;-32
execute positioned 32 ~ -32 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.+- int 1 store result score #map_height_+- uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur -32;32
execute positioned -32 ~ 32 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.-+ int 1 store result score #map_height_-+ uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

# Hauteur -32;-32
execute positioned -32 ~ -32 positioned over world_surface summon minecraft:marker run tag @s add uhc.temp.height
execute as @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..] store result storage uhc:settings map_height.-- int 1 store result score #map_height_-- uhc.data.setup run data get entity @s Pos[1]
kill @n[type=minecraft:marker,tag=uhc.temp.height,distance=0..]

scoreboard players set #map_height_max uhc.data.setup 128
scoreboard players operation #map_height_max uhc.data.setup > #map_height_00 uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_+0 uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_0+ uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_-0 uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_0- uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_++ uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_+- uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_-+ uhc.data.setup
scoreboard players operation #map_height_max uhc.data.setup > #map_height_-- uhc.data.setup

scoreboard players set #map_height_min uhc.data.setup 58

scoreboard players set #temp uhc.data.temp 9
scoreboard players operation #map_height_avg uhc.data.setup = #map_height_00 uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_+0 uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_0+ uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_-0 uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_0- uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_++ uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_+- uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_-+ uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup += #map_height_-- uhc.data.setup
scoreboard players operation #map_height_avg uhc.data.setup /= #temp uhc.data.temp

scoreboard players operation #map_height_limit_above uhc.data.setup = #map_height_max uhc.data.setup
scoreboard players add #map_height_limit_above uhc.data.setup 32

scoreboard players operation #map_height_limit_below uhc.data.setup = #map_height_min uhc.data.setup
scoreboard players remove #map_height_limit_below uhc.data.setup 8
