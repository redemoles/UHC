
#> lobby:mini_games/tc/mini_games/parkour/record/chains/new_pb
#
# @within			lobby:mini_games/tc/mini_games/parkour/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#

scoreboard players operation @s lobby.tc.record.parkour.chains = #temp_record lobby.tc.record.parkour.chains
scoreboard players operation @s lobby.tc.data.record.parkour.chains = #temp_record lobby.tc.data.record.parkour.chains
scoreboard players operation @s lobby.tc.data.record.parkour.chains.min = #temp_record lobby.tc.data.record.parkour.chains.min
scoreboard players operation @s lobby.tc.data.record.parkour.chains.sec = #temp_record lobby.tc.data.record.parkour.chains.sec
scoreboard players operation @s lobby.tc.data.record.parkour.chains.ms = #temp_record lobby.tc.data.record.parkour.chains.ms

execute if score @s lobby.tc.data.record.parkour.chains.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score @s lobby.tc.data.record.parkour.chains.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score @s lobby.tc.data.record.parkour.chains.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score @s lobby.tc.data.record.parkour.chains.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score @s lobby.tc.data.record.parkour.chains.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

data modify storage lobby:temp record.map set value "chains"

execute if entity @s[tag=!mgs.tc.lr] run function uhc:translation/lobby/tc_parkour_pb with storage lobby:temp record
