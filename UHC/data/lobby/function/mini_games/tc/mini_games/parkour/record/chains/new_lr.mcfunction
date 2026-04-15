
#> lobby:mini_games/tc/mini_games/parkour/record/chains/new_lr
#
# @within			lobby:mini_games/tc/mini_games/parkour/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#


scoreboard players operation #record lobby.tc.data.record.parkour.chains = @s lobby.tc.data.record.parkour.chains
scoreboard players operation #record lobby.tc.data.record.parkour.chains.min = @s lobby.tc.data.record.parkour.chains.min
scoreboard players operation #record lobby.tc.data.record.parkour.chains.sec = @s lobby.tc.data.record.parkour.chains.sec
scoreboard players operation #record lobby.tc.data.record.parkour.chains.ms = @s lobby.tc.data.record.parkour.chains.ms

function uhc:translation/lobby/tc_parkour_lr with storage lobby:temp record
