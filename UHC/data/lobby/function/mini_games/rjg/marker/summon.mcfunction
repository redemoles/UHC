
#> lobby:mini_games/rjg/marker/summon
#
# @within			
#
#
# @description		Création du marker
#

tag @s add mgs.jump.marker
scoreboard players operation @s lobby.rjg.score.inv = #temp+2 lobby.rjg.score.inv
scoreboard players operation @s lobby.rjg.id.player = #temp lobby.rjg.id.player
