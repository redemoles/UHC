
#> lobby:mini_games/rjg/player/timer/second
#
# @within			lobby:mini_games/rjg/player/timer/ms
#
#
# @description		Secondes par joueur
#

scoreboard players set @s lobby.rjg.temp.ms 0
scoreboard players add @s lobby.rjg.temp.sec 1
execute if score @s lobby.rjg.temp.sec matches 60 run function lobby:mini_games/rjg/player/timer/minute
