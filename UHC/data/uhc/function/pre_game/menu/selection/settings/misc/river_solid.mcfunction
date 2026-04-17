
#> uhc:pre_game/menu/selection/settings/misc/river_solid
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#


scoreboard players add #river_solid uhc.data.setup 1
execute if score #river_solid uhc.data.setup matches 2 run scoreboard players set #river_solid uhc.data.setup 0

## Génération des rivières
execute if score #river_solid uhc.data.setup matches 0 in minecraft:overworld run function uhc:start/river/vanilla
execute if score #river_solid uhc.data.setup matches 1 in minecraft:overworld run function uhc:start/river/solid
