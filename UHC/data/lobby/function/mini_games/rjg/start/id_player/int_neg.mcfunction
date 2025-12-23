
#> lobby:mini_games/rjg/start/id_player/int_neg
#
# @within			lobby:mini_games/rjg/start/id_player/generator
#
#
# @description		Nouvelle id si la précédente était négative
#


scoreboard players operation #temp lobby.rjg.id.player *= #-1 uhc.data.numbers

function lobby:mini_games/rjg/start/id_player/generator
