
#> lobby:mini_games/tc/mini_games/puzzle/start/text/
#
# @within			lobby:mini_games/tc/mini_games/puzzle/start/
#
#
# @description		Démarrage du mini-jeu Puzzle
#

execute as @a if score @s lobby.tc.data.record.puzzle = #record lobby.tc.data.record.puzzle run tag @s add mgs.tc.recordman

function uhc:translation/lobby/tc_puzzle_start

execute as @a[tag=mgs.tc.recordman] run tag @s remove mgs.tc.recordman
