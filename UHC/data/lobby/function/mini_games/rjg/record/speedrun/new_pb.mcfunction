
#> lobby:mini_games/rjg/record/speedrun/new_pb
#
# @within			lobby:mini_games/rjg/record/speedrun/end
#
#
# @description		Comparaison du score avec les records
#

scoreboard players operation @s lobby.rjg.record.speedrun.score > @s lobby.rjg.score.sb

tag @s add mgs.jump.record
execute unless score #record lobby.rjg.record.speedrun.score >= @s lobby.rjg.score.sb run return run function lobby:mini_games/rjg/record/speedrun/new_lr

function uhc:translation/lobby/rjg_speedrun_pb

tag @s remove mgs.jump.record
