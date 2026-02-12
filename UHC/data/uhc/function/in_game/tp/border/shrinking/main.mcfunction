
#> uhc:in_game/tp/border/shrinking/main
#
# @within			uhc:in_game/tp/border/coords/
#
#
# @description		TP d'un joueur derrière la worldborder 
#

execute if score #player_x uhc.data.temp matches 0.. run function uhc:in_game/tp/border/shrinking/xp
execute if score #player_z uhc.data.temp matches 0.. run function uhc:in_game/tp/border/shrinking/zp
execute if score #player_x uhc.data.temp matches ..-1 run function uhc:in_game/tp/border/shrinking/xn
execute if score #player_z uhc.data.temp matches ..-1 run function uhc:in_game/tp/border/shrinking/zn
function uhc:in_game/tp/border/tp with storage uhc:temp tp

execute at @s run forceload remove ~ ~
scoreboard players reset #player_x uhc.data.temp
scoreboard players reset #player_z uhc.data.temp
