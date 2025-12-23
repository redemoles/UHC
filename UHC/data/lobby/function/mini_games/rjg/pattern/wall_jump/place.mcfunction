
#> lobby:mini_games/rjg/pattern/wall_jump/place
#
# @within			lobby:mini_games/rjg/pattern/wall_jump/
#
#
# @description		Placement du nouveau bloc
#

$execute positioned ~$(x) ~$(y) ~$(z) summon minecraft:marker run function lobby:mini_games/rjg/marker/summon

## Bloc 031-040
# 031-040
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031.. positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:ladder[facing=west]
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..032 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run fill ~1 ~ ~ ~1 ~2 ~ minecraft:waxed_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..032 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~1 ~-1 ~ minecraft:raw_copper_block
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..034 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run fill ~1 ~ ~ ~1 ~2 ~ minecraft:waxed_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..034 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~1 ~-1 ~ minecraft:waxed_copper_block
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 033..036 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run fill ~1 ~ ~ ~1 ~2 ~ minecraft:waxed_exposed_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 033..036 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~1 ~-1 ~ minecraft:waxed_exposed_copper
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 035..038 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run fill ~1 ~ ~ ~1 ~2 ~ minecraft:waxed_weathered_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 035..038 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~1 ~-1 ~ minecraft:waxed_weathered_copper
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 037..038 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run fill ~1 ~ ~ ~1 ~2 ~ minecraft:waxed_oxidized_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 037..038 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~1 ~-1 ~ minecraft:waxed_oxidized_copper
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 039..040 positioned ~$(x) ~$(y) ~$(z) run fill ~1 ~ ~ ~1 ~2 ~ minecraft:waxed_oxidized_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches 1 if score #cycle_temp+2 lobby.rjg.score.inv matches 039..040 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~1 ~-1 ~ minecraft:waxed_oxidized_copper

$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031.. positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:ladder[facing=east]
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..032 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:waxed_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..032 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~-1 ~-1 ~ minecraft:raw_copper_block
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..034 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:waxed_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 031..034 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~-1 ~-1 ~ minecraft:waxed_copper_block
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 033..036 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:waxed_exposed_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 033..036 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~-1 ~-1 ~ minecraft:waxed_exposed_copper
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 035..038 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:waxed_weathered_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 035..038 if score #new_block lobby.rjg.block_pick matches 001..050 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~-1 ~-1 ~ minecraft:waxed_weathered_copper
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 037..038 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:waxed_oxidized_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 037..038 if score #new_block lobby.rjg.block_pick matches 051..100 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~-1 ~-1 ~ minecraft:waxed_oxidized_copper
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 039..040 positioned ~$(x) ~$(y) ~$(z) run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:waxed_oxidized_copper_grate
$execute if score #wall_jump lobby.rjg.wall_jump matches -1 if score #cycle_temp+2 lobby.rjg.score.inv matches 039..040 positioned ~$(x) ~$(y) ~$(z) run return run setblock ~-1 ~-1 ~ minecraft:waxed_oxidized_copper
