
#> lobby:mini_games/rjg/start/id_player/generator
#
# @within			lobby:mini_games/rjg/start/
#
#
# @description		Génération de l'id joueur
#

execute unless entity @n[type=minecraft:marker,tag=mgs.jump.marker,predicate=lobby:rjg/id_player] run return run function lobby:mini_games/rjg/start/id_player/valid_id

execute if score #temp lobby.rjg.id.player matches 0.. run return run function lobby:mini_games/rjg/start/id_player/int_pos
execute if score #temp lobby.rjg.id.player matches ..-1 run return run function lobby:mini_games/rjg/start/id_player/int_neg
