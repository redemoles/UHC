
#> uhc:start/tp/in_the_sky
#
# @within			uhc:start/setup/team/team_mode/main
#
#
# @description		Téléportation aux points d'apparition dans le ciel au centre de la map 
#

## Élytras
item replace entity @s armor.chest with minecraft:elytra[minecraft:custom_data={Tags:"start_in_the_sky"},minecraft:unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}]
tag @s add uhc.player.start_in_the_sky

## Point d'apparition
# Départ
execute in minecraft:overworld run tp @s 0 180 0
scoreboard players set @s uhc.player.tp 1
# Réapparition
function uhc:in_game/tp/spawn/point/macro_set
