
#> lobby:mini_games/tc/mini_games/memory_build/record/taiga/new_pb
#
# @within			lobby:mini_games/tc/mini_games/memory_build/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#

scoreboard players operation @s lobby.tc.record.memory_build.taiga = #temp_record lobby.tc.record.memory_build.taiga
scoreboard players operation @s lobby.tc.data.record.memory_build.taiga = #temp_record lobby.tc.data.record.memory_build.taiga
scoreboard players operation @s lobby.tc.data.record.memory_build.taiga.min = #temp_record lobby.tc.data.record.memory_build.taiga.min
scoreboard players operation @s lobby.tc.data.record.memory_build.taiga.sec = #temp_record lobby.tc.data.record.memory_build.taiga.sec
scoreboard players operation @s lobby.tc.data.record.memory_build.taiga.ms = #temp_record lobby.tc.data.record.memory_build.taiga.ms

execute if score @s lobby.tc.data.record.memory_build.taiga.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score @s lobby.tc.data.record.memory_build.taiga.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score @s lobby.tc.data.record.memory_build.taiga.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score @s lobby.tc.data.record.memory_build.taiga.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score @s lobby.tc.data.record.memory_build.taiga.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

data modify storage lobby:temp record.map set value "taiga"

execute if entity @s[tag=!mgs.tc.lr] run function uhc:translation/lobby/tc_mb_pb with storage lobby:temp record
