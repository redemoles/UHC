
#> lobby:mini_games/br/record/main
#
# @within			lobby:mini_games/br/finished
#
#
# @description		Enregistre le temps
#

scoreboard players operation #temp_record lobby.br.data.record = @s lobby.br.timer
scoreboard players operation #temp_record lobby.br.timer = @s lobby.br.timer
scoreboard players operation #temp_record lobby.br.timer /= #1000 uhc.data.numbers

# Enregistrement du temps en minute/seconde/millisecondes
scoreboard players operation #temp_record lobby.br.data.record.min = #temp_record lobby.br.timer
scoreboard players operation #temp_record lobby.br.data.record.min /= #60 uhc.data.numbers

scoreboard players operation #temp_record lobby.br.data.record.sec = #temp_record lobby.br.timer
scoreboard players operation #temp_record lobby.br.data.record.min *= #60 uhc.data.numbers
scoreboard players operation #temp_record lobby.br.data.record.sec -= #temp_record lobby.br.data.record.min
scoreboard players operation #temp_record lobby.br.data.record.min /= #60 uhc.data.numbers

scoreboard players operation #temp_record lobby.br.data.record.ms = #temp_record lobby.br.data.record
scoreboard players operation #temp_record lobby.br.timer *= #1000 uhc.data.numbers
scoreboard players operation #temp_record lobby.br.data.record.ms -= #temp_record lobby.br.timer
scoreboard players operation #temp_record lobby.br.timer /= #1000 uhc.data.numbers

# Vérifie si nouveau record local
execute unless score #temp_record lobby.br.data.record > @s lobby.br.data.record run tag @s add mgs.br.pb
execute unless score #temp_record lobby.br.data.record > #record lobby.br.data.record run tag @s add mgs.br.lr
execute if entity @s[tag=mgs.br.pb] run function lobby:mini_games/br/record/new_pb
execute if entity @s[tag=mgs.br.lr] run function lobby:mini_games/br/record/new_lr
execute if entity @s[tag=!mgs.br.lr,tag=!mgs.br.pb] run function lobby:mini_games/br/record/time
tag @s remove mgs.br.pb
tag @s remove mgs.br.lr
