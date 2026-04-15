
#> lobby:mini_games/rjg/record/infinite/end
#
# @within			lobby:mini_games/rjg/player/out
#
#
# @description		Comparaison du score avec les records
#

execute unless score @s lobby.rjg.record.infinite.score >= @s lobby.rjg.score.sb run return run function lobby:mini_games/rjg/record/infinite/new_pb

function uhc:translation/lobby/rjg_infinite_end
