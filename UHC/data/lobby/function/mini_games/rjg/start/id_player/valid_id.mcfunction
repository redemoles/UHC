
#> lobby:mini_games/rjg/start/id_player/valid_id
#
# @within			lobby:mini_games/rjg/start/id_player/generator
#
#
# @description		Id validé
#

execute store result storage rjg:temp area.x int 48 run scoreboard players get #temp lobby.rjg.id.player
execute in uhc:lobby positioned 0 32 100 run return run function lobby:mini_games/rjg/start/player with storage rjg:temp area
