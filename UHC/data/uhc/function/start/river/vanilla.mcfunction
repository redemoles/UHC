
#> uhc:start/river/vanilla
#
# @within			uhc:start/setup_uhc
#
#
# @description		Étendues d'eau non modifié
#

forceload add -192 -192 191 -65
forceload add -192 -64 191 63
forceload add -192 64 191 191

execute positioned -192 58 -192 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned -192 58 -64 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned -192 58 64 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned -64 58 -192 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned -64 58 -64 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned -64 58 64 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned 64 58 -192 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned 64 58 -64 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
execute positioned 64 58 64 run fill ~ ~ ~ ~128 ~ ~128 minecraft:water[level=0] replace minecraft:light_blue_stained_glass
