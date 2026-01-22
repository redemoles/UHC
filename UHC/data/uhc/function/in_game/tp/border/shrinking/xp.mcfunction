
#> uhc:in_game/tp/border/xp
#
# @within			uhc:in_game/tp/border/tp
#
#
# @description		TP d'un joueur derrière la worldborder 
#


scoreboard players operation #player_x uhc.data.temp -= #border_size uhc.data.temp
execute unless score #player_x uhc.data.temp matches 3.. run return run scoreboard players reset #player_x uhc.data.temp

scoreboard players add #player_x uhc.data.temp 2

execute store result storage uhc:temp tp.xp int 1 run scoreboard players get #player_x uhc.data.temp


damage @s 1
