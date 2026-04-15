
#> lobby:mini_games/tc/mini_games/os_pve/start/classic_01
#
# @within			lobby:mini_games/tc/mini_games/os_pve/start/
#
#
# @description		Démarrage du mini-jeu Parkour One Shot
#

execute as @a if score @s lobby.tc.data.record.os_pve.classic_01 = #record lobby.tc.data.record.os_pve.classic_01 run tag @s add mgs.tc.recordman

function uhc:translation/lobby/tc_os_pve_start_classic_01

execute as @a[tag=mgs.tc.recordman] run tag @s remove mgs.tc.recordman
