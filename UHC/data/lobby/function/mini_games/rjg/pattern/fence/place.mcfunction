
#> lobby:mini_games/rjg/pattern/simple/place
#
# @within			lobby:mini_games/rjg/pattern/simple/
#
#
# @description		Placement du nouveau bloc
#

$execute positioned ~$(x) ~$(y) ~$(z) summon minecraft:marker run function lobby:mini_games/rjg/marker/summon

## Bloc 021-030
# 021-030
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 021..030 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:granite_wall

## Bloc 031-040
# 031-040
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 031..034 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ minecraft:waxed_copper_chain[axis=z]
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 031..036 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ minecraft:waxed_exposed_copper_chain[axis=z]
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 035..038 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ minecraft:waxed_weathered_copper_chain[axis=z]
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 037..038 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ minecraft:waxed_oxidized_copper_chain[axis=z]
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 039..040 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ minecraft:waxed_oxidized_copper_chain[axis=z]

## Bloc 041-050
# 041-050
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 041.. positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:prismarine_wall

## Bloc 131-050
# 131-050
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 131..150 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~4 ~ minecraft:calcite
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 131..150 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run fill ~ ~1 ~ ~ ~3 ~ minecraft:iron_chain
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 131..150 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ minecraft:soul_lantern[hanging=true]
