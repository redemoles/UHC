
#> lobby:mini_games/rjg/player/out
#
# @within			lobby:mini_games/rjg/tick
#
#
# @description		Chute du joueur
#

execute if entity @s[tag=mgs.jump.infinite] run function lobby:mini_games/rjg/record/infinite/
execute if entity @s[tag=mgs.jump.solo] run function lobby:mini_games/rjg/record/solo/

execute as @e[type=minecraft:marker,tag=mgs.jump.marker,distance=0..,predicate=lobby:rjg/id_player] at @s run function lobby:mini_games/rjg/marker/kill

function uhc:pre_game/menu/load/tp/center
