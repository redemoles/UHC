
#> uhc:in_game/tp/border/coords
#
# @within			uhc:in_game/player/tick
#
#
# @description		TP d'un joueur derrière la worldborder 
#

# Récupère les coordonnées des joueurs
execute unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main
scoreboard players operation #player_x uhc.data.temp = @s uhc.player.x
scoreboard players operation #player_z uhc.data.temp = @s uhc.player.z
execute as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] unless score #shrink_dynamic uhc.data.temp matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 if score #shrink_1_timer_end uhc.data.temp matches 1.. run return run function uhc:in_game/tp/border/shrinking/main
execute as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] unless score #shrink_dynamic uhc.data.temp matches 1..2 if score #shrink_2_time_left uhc.data.temp matches ..0 if score #shrink_2_timer_end uhc.data.temp matches 1.. run return run function uhc:in_game/tp/border/shrinking/main
execute as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] unless score #shrink_dynamic uhc.data.temp matches 1..3 if score #shrink_3_time_left uhc.data.temp matches ..0 if score #shrink_3_timer_end uhc.data.temp matches 1.. run return run function uhc:in_game/tp/border/shrinking/main
execute as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] if score #shrink_dynamic uhc.data.temp matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 unless score #border_size+1 uhc.data.temp = #border_size uhc.data.temp run return run function uhc:in_game/tp/border/shrinking/main
execute as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] if score #shrink_dynamic uhc.data.temp matches 2 if score #shrink_2_time_left uhc.data.temp matches ..0 unless score #border_size+1 uhc.data.temp = #border_size uhc.data.temp run return run function uhc:in_game/tp/border/shrinking/main
execute as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] if score #shrink_dynamic uhc.data.temp matches 3 if score #shrink_3_time_left uhc.data.temp matches ..0 unless score #border_size+1 uhc.data.temp = #border_size uhc.data.temp run return run function uhc:in_game/tp/border/shrinking/main
function uhc:in_game/tp/border/stable/main
