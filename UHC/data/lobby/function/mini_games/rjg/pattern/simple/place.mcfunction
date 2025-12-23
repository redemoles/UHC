
#> lobby:mini_games/rjg/pattern/simple/place
#
# @within			lobby:mini_games/rjg/pattern/simple/
#
#
# @description		Placement du nouveau bloc
#

$execute positioned ~$(x) ~$(y) ~$(z) summon minecraft:marker run function lobby:mini_games/rjg/marker/summon

## Bloc 001-010
# 001-003
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 000..003 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:moss_block
# 004-009
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 004..007 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:moss_block
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 008..009 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:tuff
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 004..009 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:pale_moss_block
# 010
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 010 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:tuff

## Bloc 011-020
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..017 if score #new_block lobby.rjg.block_pick matches 001..025 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:andesite
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 018..020 if score #new_block lobby.rjg.block_pick matches 001..025 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:dripstone_block
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..020 if score #new_block lobby.rjg.block_pick matches 026..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:granite
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..020 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:tuff

## Bloc 021-030
# 021-025
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 021..025 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:granite
# 026-029
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 026..029 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:granite
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 026..029 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:raw_copper_block
# 030
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 030 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:raw_copper_block

## Bloc 031-040
# 031-040
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 031..032 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:raw_copper_block
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 031..034 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:waxed_copper_block
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 033..036 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:waxed_exposed_copper
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 035..038 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:waxed_weathered_copper
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 037..038 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:waxed_oxidized_copper
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 039..040 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:waxed_oxidized_copper

## Bloc 041-050
# 041-050
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 041.. if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:prismarine_bricks
$execute if score #cycle_temp+2 lobby.rjg.score.inv matches 041.. if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~ ~-1 ~ minecraft:prismarine
