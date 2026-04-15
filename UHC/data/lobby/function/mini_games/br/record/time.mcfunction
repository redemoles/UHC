
#> lobby:mini_games/br/record/time
#
# @within			lobby:mini_games/br/finished
#
#
# @description		Annonce au joueur concerné le temps qu'il a mis pour terminer le mini-jeu
#










execute if score #temp_record lobby.br.data.record.sec matches 10.. run data modify storage lobby:temp record.s set value ""
execute if score #temp_record lobby.br.data.record.sec matches ..09 run data modify storage lobby:temp record.s set value "0"

execute if score #temp_record lobby.br.data.record.ms matches 0100.. run data modify storage lobby:temp record.ms set value ""
execute if score #temp_record lobby.br.data.record.ms matches 10..99 run data modify storage lobby:temp record.ms set value "0"
execute if score #temp_record lobby.br.data.record.ms matches ..0009 run data modify storage lobby:temp record.ms set value "00"

function uhc:translation/lobby/backroom_time with storage lobby:temp record
