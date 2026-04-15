
#> lobby:mini_games/tc/mini_games/classic_01/start/
#
# @within			lobby:mini_games/tc/timer/start/
#
#
# @description		Démarrage du mini-jeu Parkour
#

execute as @a if score @s lobby.tc.data.record.parkour.classic_01 = #record lobby.tc.data.record.parkour.classic_01 run tag @s add mgs.tc.recordman

function uhc:translation/lobby/tc_parkour_start_classic_01

execute as @a[tag=mgs.tc.recordman] run tag @s remove mgs.tc.recordman
