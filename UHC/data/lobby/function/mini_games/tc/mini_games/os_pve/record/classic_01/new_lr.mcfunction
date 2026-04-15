
#> lobby:mini_games/tc/mini_games/os_pve/record/classic_01/new_lr
#
# @within			lobby:mini_games/tc/mini_games/os_pve/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#


scoreboard players operation #record lobby.tc.data.record.os_pve.classic_01 = @s lobby.tc.data.record.os_pve.classic_01
scoreboard players operation #record lobby.tc.data.record.os_pve.classic_01.min = @s lobby.tc.data.record.os_pve.classic_01.min
scoreboard players operation #record lobby.tc.data.record.os_pve.classic_01.sec = @s lobby.tc.data.record.os_pve.classic_01.sec
scoreboard players operation #record lobby.tc.data.record.os_pve.classic_01.ms = @s lobby.tc.data.record.os_pve.classic_01.ms

execute if entity @s[tag=!mgs.tc.lr] run function uhc:translation/lobby/tc_os_pve_lr with storage lobby:temp record

