
#> uhc:in_game/tp/border/coords
#
# @within			uhc:in_game/player/tick
#
#
# @description		TP d'un joueur derrière la worldborder 
#

# Récupère les coordonnées des joueurs
data modify storage uhc:temp player merge from entity @s
execute store result score #player_x uhc.data.temp run data get storage uhc:temp player.Pos[0]
execute store result score #player_z uhc.data.temp run data get storage uhc:temp player.Pos[2]
execute unless score #shrink_1_dynamic uhc.data.temp matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 if score #shrink_1_timer_end uhc.data.temp matches 1.. run return run function uhc:in_game/tp/border/shrinking/
execute unless score #shrink_2_dynamic uhc.data.temp matches 1 if score #shrink_2_time_left uhc.data.temp matches ..0 if score #shrink_2_timer_end uhc.data.temp matches 1.. run return run function uhc:in_game/tp/border/shrinking/
execute unless score #shrink_3_dynamic uhc.data.temp matches 1 if score #shrink_3_time_left uhc.data.temp matches ..0 if score #shrink_3_timer_end uhc.data.temp matches 1.. run return run function uhc:in_game/tp/border/shrinking/
execute unless score #shrink_1_dynamic uhc.data.temp matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 unless score #border_size+1 uhc.data.temp = #border_size uhc.data.temp run return run function uhc:in_game/tp/border/shrinking/
execute unless score #shrink_2_dynamic uhc.data.temp matches 1 if score #shrink_2_time_left uhc.data.temp matches ..0 unless score #border_size+1 uhc.data.temp = #border_size uhc.data.temp run return run function uhc:in_game/tp/border/shrinking/
execute unless score #shrink_3_dynamic uhc.data.temp matches 1 if score #shrink_3_time_left uhc.data.temp matches ..0 unless score #border_size+1 uhc.data.temp = #border_size uhc.data.temp run return run function uhc:in_game/tp/border/shrinking/
function uhc:in_game/tp/border/stable/
