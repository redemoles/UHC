
#> lobby:mini_games/rjg/record/infinite/new_pb
#
# @within			lobby:mini_games/rjg/record/infinite/end
#
#
# @description		Comparaison du score avec les records
#

scoreboard players operation @s lobby.rjg.record.infinite.score > @s lobby.rjg.score.sb

tag @s add mgs.jump.record
execute unless score #record lobby.rjg.record.infinite.score >= @s lobby.rjg.score.sb run return run function lobby:mini_games/rjg/record/infinite/new_lr

function uhc:translation/lobby/rjg_infinite_pb

tag @s remove mgs.jump.record
