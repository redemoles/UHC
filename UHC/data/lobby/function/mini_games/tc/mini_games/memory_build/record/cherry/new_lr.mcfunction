
#> lobby:mini_games/tc/mini_games/memory_build/record/cherry/new_lr
#
# @within			lobby:mini_games/tc/mini_games/memory_build/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#


scoreboard players operation #record lobby.tc.data.record.memory_build.cherry = @s lobby.tc.data.record.memory_build.cherry
scoreboard players operation #record lobby.tc.data.record.memory_build.cherry.min = @s lobby.tc.data.record.memory_build.cherry.min
scoreboard players operation #record lobby.tc.data.record.memory_build.cherry.sec = @s lobby.tc.data.record.memory_build.cherry.sec
scoreboard players operation #record lobby.tc.data.record.memory_build.cherry.ms = @s lobby.tc.data.record.memory_build.cherry.ms

function uhc:translation/lobby/tc_mb_lr with storage lobby:temp record
