
#> lobby:mini_games/rjg/player/
#
# @within			lobby:mini_games/rjg/tick
#
#
# @description		Tick
#

scoreboard players operation #temp lobby.rjg.id.player = @s lobby.rjg.id.player

# Si joueur tombé
execute if entity @s[y=12,dy=-4] run function lobby:mini_games/rjg/player/out

# Si joueur atteint un nouveau block
scoreboard players operation #temp+1 lobby.rjg.score.inv = @s lobby.rjg.score.sb
scoreboard players add #temp+1 lobby.rjg.score.inv 1
execute if entity @n[type=marker,tag=mgs.jump.marker,predicate=lobby:rjg/id_player,distance=..1.2,predicate=lobby:rjg/id_block_and_1] run function lobby:mini_games/rjg/player/new_block
