
#> lobby:mini_games/rjg/pattern/end_cycle/place
#
# @within			lobby:mini_games/rjg/pattern/end_cycle/
#
#
# @description		Placement du nouveau bloc
#

$execute positioned ~$(x) ~$(y) ~$(z) summon minecraft:marker run function lobby:mini_games/rjg/marker/summon

## Bloc Final
$execute positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~-1 ~ minecraft:gold_block
