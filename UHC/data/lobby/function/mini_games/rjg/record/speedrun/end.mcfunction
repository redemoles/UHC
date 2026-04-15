
#> lobby:mini_games/rjg/record/speedrun/end
#
# @within			lobby:mini_games/rjg/player/out
#
#
# @description		Comparaison du score avec les records
#

execute unless score @s lobby.rjg.record.speedrun.score >= @s lobby.rjg.score.sb run return run function lobby:mini_games/rjg/record/speedrun/new_pb

function uhc:translation/lobby/rjg_speedrun_end
