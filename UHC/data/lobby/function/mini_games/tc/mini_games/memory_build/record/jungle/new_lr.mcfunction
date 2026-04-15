
#> lobby:mini_games/tc/mini_games/memory_build/record/jungle/new_lr
#
# @within			lobby:mini_games/tc/mini_games/memory_build/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#


scoreboard players operation #record lobby.tc.data.record.memory_build.jungle = @s lobby.tc.data.record.memory_build.jungle
scoreboard players operation #record lobby.tc.data.record.memory_build.jungle.min = @s lobby.tc.data.record.memory_build.jungle.min
scoreboard players operation #record lobby.tc.data.record.memory_build.jungle.sec = @s lobby.tc.data.record.memory_build.jungle.sec
scoreboard players operation #record lobby.tc.data.record.memory_build.jungle.ms = @s lobby.tc.data.record.memory_build.jungle.ms

function uhc:translation/lobby/tc_mb_lr with storage lobby:temp record
