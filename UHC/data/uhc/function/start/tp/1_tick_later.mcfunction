
#> uhc:start/tp/1_tick_later
#
# @within			uhc:start/countdown/start
#
#
# @description		Lancement de la partie
#

execute at @s positioned over motion_blocking run tp @s ~ ~ ~
execute at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 0.8 1 1
