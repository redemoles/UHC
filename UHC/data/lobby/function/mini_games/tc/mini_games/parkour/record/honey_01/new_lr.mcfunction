
#> lobby:mini_games/tc/mini_games/parkour/record/honey_01/new_lr
#
# @within			lobby:mini_games/tc/mini_games/parkour/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#


scoreboard players operation #record lobby.tc.data.record.parkour.honey_01 = @s lobby.tc.data.record.parkour.honey_01
scoreboard players operation #record lobby.tc.data.record.parkour.honey_01.min = @s lobby.tc.data.record.parkour.honey_01.min
scoreboard players operation #record lobby.tc.data.record.parkour.honey_01.sec = @s lobby.tc.data.record.parkour.honey_01.sec
scoreboard players operation #record lobby.tc.data.record.parkour.honey_01.ms = @s lobby.tc.data.record.parkour.honey_01.ms

function uhc:translation/lobby/tc_parkour_lr with storage lobby:temp record
