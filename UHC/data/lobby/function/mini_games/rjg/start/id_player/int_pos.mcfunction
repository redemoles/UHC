
#> lobby:mini_games/rjg/start/id_player/int_pos
#
# @within			lobby:mini_games/rjg/start/id_player/generator
#
#
# @description		Nouvelle id si la précédente était positive
#

scoreboard players add #temp lobby.rjg.id.player 1
scoreboard players operation #temp lobby.rjg.id.player *= #-1 uhc.data.numbers

function lobby:mini_games/rjg/start/id_player/generator
