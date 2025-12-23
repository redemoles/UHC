
#> lobby:mini_games/rjg/start/block_1
#
# @within			lobby:mini_games/rjg/start/player
#
#
# @description		Placement du premier block
#

# Block 0
scoreboard players set #temp+2 lobby.rjg.score.inv 0
execute positioned ~ ~ ~ summon minecraft:marker run function lobby:mini_games/rjg/marker/summon
execute positioned ~ ~ ~ run setblock ~ ~-1 ~ minecraft:gold_block

# Block 1
scoreboard players set #temp+2 lobby.rjg.score.inv 1
execute positioned ~ ~ ~4 summon minecraft:marker run function lobby:mini_games/rjg/marker/summon
execute positioned ~ ~ ~4 run setblock ~ ~-1 ~ minecraft:moss_block
