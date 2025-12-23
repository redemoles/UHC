
#> lobby:mini_games/tick
#
# @within			uhc:pre_game/timer/tick
#
#
# @description		Redirection vers les mini-jeux du lobby
#

# Backrooms
execute as @a[tag=mgs.backroom] run function lobby:mini_games/br/

# Jump
execute as @a[tag=mgs.jump] at @s run function lobby:mini_games/rjg/tick

# Trial Chamber
execute positioned 0 37 0 run function lobby:mini_games/tc/
