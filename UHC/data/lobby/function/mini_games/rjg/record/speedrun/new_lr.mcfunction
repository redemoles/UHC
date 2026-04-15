
#> lobby:mini_games/rjg/record/speedrun/new_lr
#
# @within			lobby:mini_games/rjg/record/speedrun/new_pb
#
#
# @description		Comparaison du score avec les records
#

scoreboard players operation #record lobby.rjg.record.speedrun.score > @s lobby.rjg.score.sb

function uhc:translation/lobby/rjg_speedrun_lr

tag @s remove mgs.jump.record
