
#> uhc:in_game/tp/border/xn
#
# @within			uhc:in_game/tp/border/tp
#
#
# @description		TP d'un joueur derrière la worldborder 
#

scoreboard players operation #player_x uhc.data.temp *= #-1 uhc.data.numbers
scoreboard players operation #player_x uhc.data.temp -= #border_size uhc.data.temp
execute unless score #player_x uhc.data.temp matches 3.. run return run scoreboard players reset #player_x uhc.data.temp

scoreboard players add #player_x uhc.data.temp 2

execute store result storage uhc:temp tp.xn int 1 run scoreboard players get #player_x uhc.data.temp
scoreboard players operation #player_x uhc.data.temp *= #-1 uhc.data.numbers

attribute @s minecraft:knockback_resistance modifier add uhc:temp.knockback_resistance 1 add_value
damage @s 1 minecraft:outside_border
attribute @s minecraft:knockback_resistance modifier remove uhc:temp.knockback_resistance
