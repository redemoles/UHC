
#> lobby:mini_games/rjg/hotbar/race
#
# @within			lobby:mini_games/rjg/hotbar/root
#
#
# @description		Hotbar pour Jump Race
#

execute if score @s lobby.rjg.temp.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score @s lobby.rjg.temp.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score @s lobby.rjg.temp.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score @s lobby.rjg.temp.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score @s lobby.rjg.temp.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

function uhc:translation/hotbar/lobby_rjg_race with storage lobby:temp record
