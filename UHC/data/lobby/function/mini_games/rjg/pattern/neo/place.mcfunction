
#> lobby:mini_games/rjg/pattern/neo/place
#
# @within			lobby:mini_games/rjg/pattern/neo/
#
#
# @description		Placement du nouveau bloc
#

$execute positioned ~$(x) ~$(y) ~$(z) summon minecraft:marker run function lobby:mini_games/rjg/marker/summon

## Bloc 011-019
# 011-019
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..017 if score #new_block lobby.rjg.block_pick matches 001..025 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:tuff
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..017 if score #new_block lobby.rjg.block_pick matches 026..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:andesite
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..020 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:dripstone_block
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 018..020 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:granite
# 011-020
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..020 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~3 ~-3 minecraft:dripstone_block
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..020 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~2 ~-3 minecraft:pointed_dripstone[vertical_direction=down,thickness=frustum]
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..020 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~1 ~-3 minecraft:pointed_dripstone[vertical_direction=down,thickness=tip]

## Bloc 021-030
# 020-026
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 021..026 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:granite
# 027-029
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 027..029 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:granite
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 027..029 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:raw_copper_block
# 030
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 030 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:raw_copper_block
# 021-030
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 021..030 positioned ~$(x) ~$(y) ~$(z) run return run fill ~ ~ ~-2 ~ ~1 ~-2 minecraft:granite_wall
