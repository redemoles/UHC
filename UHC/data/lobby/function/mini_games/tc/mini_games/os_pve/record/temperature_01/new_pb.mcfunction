
#> lobby:mini_games/tc/mini_games/os_pve/record/temperature_01/new_pb
#
# @within			lobby:mini_games/tc/mini_games/os_pve/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#

scoreboard players operation @s lobby.tc.record.os_pve.temperature_01 = #temp_record lobby.tc.record.os_pve.temperature_01
scoreboard players operation @s lobby.tc.data.record.os_pve.temperature_01 = #temp_record lobby.tc.data.record.os_pve.temperature_01
scoreboard players operation @s lobby.tc.data.record.os_pve.temperature_01.min = #temp_record lobby.tc.data.record.os_pve.temperature_01.min
scoreboard players operation @s lobby.tc.data.record.os_pve.temperature_01.sec = #temp_record lobby.tc.data.record.os_pve.temperature_01.sec
scoreboard players operation @s lobby.tc.data.record.os_pve.temperature_01.ms = #temp_record lobby.tc.data.record.os_pve.temperature_01.ms

execute if score @s lobby.tc.data.record.os_pve.temperature_01.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score @s lobby.tc.data.record.os_pve.temperature_01.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score @s lobby.tc.data.record.os_pve.temperature_01.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score @s lobby.tc.data.record.os_pve.temperature_01.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score @s lobby.tc.data.record.os_pve.temperature_01.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

data modify storage lobby:temp record.map set value "temperature_01"

execute if entity @s[tag=!mgs.tc.lr] run function uhc:translation/lobby/tc_os_pve_pb with storage lobby:temp record
