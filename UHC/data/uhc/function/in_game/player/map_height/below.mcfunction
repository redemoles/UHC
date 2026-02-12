
#> uhc:in_game/player/map_height/below
#
# @within			uhc:in_game/player/map_height/check_limit
#
#
# @description		Le joueur est au-dessous des limites acceptés
#

scoreboard players add @s uhc.player.map_height.text 1
execute if score @s uhc.player.map_height.text matches 2 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu es au-desssous de la hauteur maximale autorisée ! Tu peux subir des effets négatifs.","color":"#FF3F3F"}]
execute if score @s uhc.player.map_height.text matches 2 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You are below the maximum authorized height! You may suffer negative effects.","color":"#FF3F3F"}]

scoreboard players add @s uhc.player.map_height.sound 1
execute if score @s uhc.player.map_height.sound matches 2 at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0
execute if score @s uhc.player.map_height.sound matches 2 run scoreboard players set @s uhc.player.map_height.sound 0

scoreboard players add @s uhc.player.map_height.effect 1

execute if score @s uhc.player.map_height.effect >= #map_height_tick_below uhc.data.setup run damage @s 1
execute if score @s uhc.player.map_height.effect >= #map_height_tick_below uhc.data.setup run effect give @s minecraft:glowing 3 0 true
execute if score @s uhc.player.map_height.effect >= #map_height_tick_below uhc.data.setup run scoreboard players remove @s uhc.player.map_height.effect 3
