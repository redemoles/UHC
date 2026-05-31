
#> uhc:in_game/tp/spawn/start_in_the_sky
#
# @within			uhc:start/setup/team/team_mode/main
#
#
# @description		Téléportation aux points d'apparition dans le ciel au centre de la map 
#

execute positioned -5 179 -5 run place template uhc:start/platform_in_the_sky
item replace entity @a[tag=uhc.player] armor.chest with minecraft:elytra[minecraft:custom_data={Tags:"start_in_the_sky"},minecraft:unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}]
tag @a[tag=uhc.player] add uhc.player.start_in_the_sky
tp @a[tag=uhc.player] 0 180 0
function uhc:in_game/team/collision/never
