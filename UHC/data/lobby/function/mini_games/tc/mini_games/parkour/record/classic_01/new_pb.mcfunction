
#> lobby:mini_games/tc/mini_games/parkour/record/classic_01/new_pb
#
# @within			lobby:mini_games/tc/mini_games/parkour/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#

scoreboard players operation @s lobby.tc.record.parkour.classic_01 = #temp_record lobby.tc.record.parkour.classic_01
scoreboard players operation @s lobby.tc.data.record.parkour.classic_01 = #temp_record lobby.tc.data.record.parkour.classic_01
scoreboard players operation @s lobby.tc.data.record.parkour.classic_01.min = #temp_record lobby.tc.data.record.parkour.classic_01.min
scoreboard players operation @s lobby.tc.data.record.parkour.classic_01.sec = #temp_record lobby.tc.data.record.parkour.classic_01.sec
scoreboard players operation @s lobby.tc.data.record.parkour.classic_01.ms = #temp_record lobby.tc.data.record.parkour.classic_01.ms

execute if score @s lobby.tc.data.record.parkour.classic_01.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score @s lobby.tc.data.record.parkour.classic_01.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score @s lobby.tc.data.record.parkour.classic_01.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score @s lobby.tc.data.record.parkour.classic_01.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score @s lobby.tc.data.record.parkour.classic_01.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

data modify storage lobby:temp record.map set value "classic_01"

execute if entity @s[tag=!mgs.tc.lr] run function uhc:translation/lobby/tc_parkour_pb with storage lobby:temp record
