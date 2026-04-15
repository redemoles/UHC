
#> lobby:mini_games/tc/mini_games/puzzle/record/new_lr
#
# @within			lobby:mini_games/tc/mini_games/puzzle/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#


scoreboard players operation #record lobby.tc.data.record.puzzle = @s lobby.tc.data.record.puzzle
scoreboard players operation #record lobby.tc.data.record.puzzle.min = @s lobby.tc.data.record.puzzle.min
scoreboard players operation #record lobby.tc.data.record.puzzle.sec = @s lobby.tc.data.record.puzzle.sec
scoreboard players operation #record lobby.tc.data.record.puzzle.ms = @s lobby.tc.data.record.puzzle.ms

function uhc:translation/lobby/tc_puzzle_lr with storage lobby:temp record
