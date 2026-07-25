
#> lobby:mini_games/br/record/new_lr
#
# @within			lobby:mini_games/br/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#

team join 099 @s[tag=!uhc.host,tag=uhc.spec]
team join 099.host @s[tag=uhc.host,tag=uhc.spec]
function uhc:in_game/player/misc/team_join

scoreboard players operation #record lobby.br.data.record = @s lobby.br.data.record
scoreboard players operation #record lobby.br.data.record.min = @s lobby.br.data.record.min
scoreboard players operation #record lobby.br.data.record.sec = @s lobby.br.data.record.sec
scoreboard players operation #record lobby.br.data.record.ms = @s lobby.br.data.record.ms

function uhc:translation/lobby/backroom_lr with storage lobby:temp record
