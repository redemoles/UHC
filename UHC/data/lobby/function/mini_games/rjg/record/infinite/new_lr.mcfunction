
#> lobby:mini_games/rjg/record/infinite/new_lr
#
# @within			lobby:mini_games/rjg/record/infinite/new_pb
#
#
# @description		Comparaison du score avec les records
#

scoreboard players operation #record lobby.rjg.record.infinite.score > @s lobby.rjg.score.sb

function uhc:translation/lobby/rjg_infinite_lr

tag @s remove mgs.jump.record
