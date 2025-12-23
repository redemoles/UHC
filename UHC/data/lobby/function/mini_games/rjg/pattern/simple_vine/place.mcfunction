
#> lobby:mini_games/rjg/pattern/simple_vine/place
#
# @within			lobby:mini_games/rjg/pattern/simple_vine/
#
#
# @description		Placement du nouveau bloc
#

$execute positioned ~$(x) ~$(y) ~$(z) summon minecraft:marker run function lobby:mini_games/rjg/marker/summon

## Bloc 001-010
# 001-003
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 000..003 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:moss_block
# 004-009
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 004..007 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:moss_block
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 008..009 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:tuff
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 004..009 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:pale_moss_block
# 010
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 010.. positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:tuff

## Vine
$execute positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~-1 minecraft:vine[south=true]
