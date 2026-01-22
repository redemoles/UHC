
#> uhc:in_game/tp/border/zn
#
# @within			uhc:in_game/tp/border/tp
#
#
# @description		TP d'un joueur derrière la worldborder 
#

scoreboard players operation #player_z uhc.data.temp *= #-1 uhc.data.numbers
scoreboard players operation #player_z uhc.data.temp -= #border_size uhc.data.temp
execute unless score #player_z uhc.data.temp matches 3.. run return run scoreboard players reset #player_z uhc.data.temp

scoreboard players add #player_z uhc.data.temp 2

execute store result storage uhc:temp tp.zn int 1 run scoreboard players get #player_z uhc.data.temp
scoreboard players operation #player_z uhc.data.temp *= #-1 uhc.data.numbers

damage @s 1
