
#> lobby:mini_games/rjg/player/timer/ms
#
# @within			lobby:mini_games/rjg/tick
#
#
# @description		Millisecondes par joueurs
#

scoreboard players add @s lobby.rjg.temp.ms 50
execute if score @s lobby.rjg.temp.ms matches 1000 run function lobby:mini_games/rjg/player/timer/second
