
#> lobby:mini_games/br/tick
#
# @within			lobby:mini_games/
#
#
# @description		Fonction générale des Backrooms
#

scoreboard players add @s lobby.br.timer 50

execute at @s if block ~.5 ~-2 ~ minecraft:yellow_terracotta run tp @s ~33.9 ~ ~
execute at @s if block ~-.5 ~-2 ~ minecraft:lime_terracotta run tp @s ~-33.9 ~ ~
execute at @s if block ~ ~-2 ~-.5 minecraft:red_terracotta run tp @s ~ ~ ~-33.9
execute at @s if block ~ ~-2 ~.5 minecraft:blue_terracotta run tp @s ~ ~ ~33.9

execute at @s if block ~.5 ~-3 ~ minecraft:yellow_terracotta run tp @s ~33.9 ~ ~
execute at @s if block ~-.5 ~-3 ~ minecraft:lime_terracotta run tp @s ~-33.9 ~ ~
execute at @s if block ~ ~-3 ~-.5 minecraft:red_terracotta run tp @s ~ ~ ~-33.9
execute at @s if block ~ ~-3 ~-.5 minecraft:blue_terracotta run tp @s ~ ~ ~33.9

execute at @s if entity @s[x=0,y=68,z=-656,dx=3,dy=2,dz=6] run function lobby:mini_games/br/finished
