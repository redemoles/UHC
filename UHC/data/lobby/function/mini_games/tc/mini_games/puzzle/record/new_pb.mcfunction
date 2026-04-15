
#> lobby:mini_games/tc/mini_games/puzzle/record/new_pb
#
# @within			lobby:mini_games/tc/mini_games/puzzle/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#

scoreboard players operation @s lobby.tc.record.puzzle = #temp_record lobby.tc.record.puzzle
scoreboard players operation @s lobby.tc.data.record.puzzle = #temp_record lobby.tc.data.record.puzzle
scoreboard players operation @s lobby.tc.data.record.puzzle.min = #temp_record lobby.tc.data.record.puzzle.min
scoreboard players operation @s lobby.tc.data.record.puzzle.sec = #temp_record lobby.tc.data.record.puzzle.sec
scoreboard players operation @s lobby.tc.data.record.puzzle.ms = #temp_record lobby.tc.data.record.puzzle.ms

execute if score @s lobby.tc.data.record.puzzle.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score @s lobby.tc.data.record.puzzle.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score @s lobby.tc.data.record.puzzle.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score @s lobby.tc.data.record.puzzle.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score @s lobby.tc.data.record.puzzle.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

execute if entity @s[tag=!mgs.tc.lr] run function uhc:translation/lobby/tc_puzzle_pb with storage lobby:temp record
