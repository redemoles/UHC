
#> uhc:in_game/player/map_height/below
#
# @within			uhc:in_game/player/map_height/check_limit
#
#
# @description		Le joueur est au-dessous des limites acceptés
#

scoreboard players add @s uhc.player.map_height.text 1
execute if score @s uhc.player.map_height.text matches 2 run function uhc:translation/in_game/player_map_height_below

scoreboard players add @s uhc.player.map_height.sound 1
execute if score @s uhc.player.map_height.sound matches 5 at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0
execute if score @s uhc.player.map_height.sound matches 5 run scoreboard players set @s uhc.player.map_height.sound 0

scoreboard players add @s uhc.player.map_height.effect 1

execute if score @s uhc.player.map_height.effect >= #map_height_tick_above uhc.data.setup run attribute @s minecraft:knockback_resistance modifier add uhc.knockback_resistance.temp 1 add_value
execute if score @s uhc.player.map_height.effect >= #map_height_tick_below uhc.data.setup run damage @s 1 minecraft:outside_border
execute if score @s uhc.player.map_height.effect >= #map_height_tick_below uhc.data.setup run effect give @s minecraft:glowing 5 0 true
execute if score @s uhc.player.map_height.effect >= #map_height_tick_below uhc.data.setup run scoreboard players remove @s uhc.player.map_height.effect 5
execute if score @s uhc.player.map_height.effect >= #map_height_tick_above uhc.data.setup run attribute @s minecraft:knockback_resistance modifier remove uhc.knockback_resistance.temp
