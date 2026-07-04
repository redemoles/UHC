
#> uhc:start/tp/main
#
# @within			uhc:start/countdown/start
#
#
# @description		Lancement de la partie
#

execute unless score #start_in_sky uhc.data.setup matches 1 if entity @p[tag=uhc.player,distance=0..] run return run function uhc:start/tp/on_ground
execute if score #start_in_sky uhc.data.setup matches 1 as @a[tag=uhc.player] run function uhc:start/tp/in_the_sky
