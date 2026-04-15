
#> lobby:mini_games/br/record/new_pb
#
# @within			lobby:mini_games/br/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#





scoreboard players operation @s lobby.br.data.record = #temp_record lobby.br.data.record
scoreboard players operation @s lobby.br.data.record.min = #temp_record lobby.br.data.record.min
scoreboard players operation @s lobby.br.data.record.sec = #temp_record lobby.br.data.record.sec
scoreboard players operation @s lobby.br.data.record.ms = #temp_record lobby.br.data.record.ms

execute if score @s lobby.br.data.record.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score @s lobby.br.data.record.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score @s lobby.br.data.record.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score @s lobby.br.data.record.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score @s lobby.br.data.record.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

execute if entity @s[tag=!mgs.br.lr] run function uhc:translation/lobby/backroom_pb with storage lobby:temp record
