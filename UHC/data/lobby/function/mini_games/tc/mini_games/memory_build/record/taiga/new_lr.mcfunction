
#> lobby:mini_games/tc/mini_games/memory_build/record/taiga/new_lr
#
# @within			lobby:mini_games/tc/mini_games/memory_build/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#


scoreboard players operation #record lobby.tc.data.record.memory_build.taiga = @s lobby.tc.data.record.memory_build.taiga
scoreboard players operation #record lobby.tc.data.record.memory_build.taiga.min = @s lobby.tc.data.record.memory_build.taiga.min
scoreboard players operation #record lobby.tc.data.record.memory_build.taiga.sec = @s lobby.tc.data.record.memory_build.taiga.sec
scoreboard players operation #record lobby.tc.data.record.memory_build.taiga.ms = @s lobby.tc.data.record.memory_build.taiga.ms

function uhc:translation/lobby/tc_mb_lr with storage lobby:temp record
