
#> lobby:mini_games/tc/mini_games/os_pve/record/classic_01/time
#
# @within			lobby:mini_games/tc/mini_games/os_pve/finished
#
#
# @description		Annonce au joueur concerné le temps qu'il a mis pour terminer le mini-jeu
#







execute if score #temp_record lobby.tc.data.record.os_pve.classic_01.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score #temp_record lobby.tc.data.record.os_pve.classic_01.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score #temp_record lobby.tc.data.record.os_pve.classic_01.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score #temp_record lobby.tc.data.record.os_pve.classic_01.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score #temp_record lobby.tc.data.record.os_pve.classic_01.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

data modify storage lobby:temp record.map set value "classic_01"

function uhc:translation/lobby/tc_os_pve_end with storage lobby:temp record
