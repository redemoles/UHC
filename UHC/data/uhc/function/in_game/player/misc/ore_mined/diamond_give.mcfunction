
#> uhc:in_game/player/misc/ore_mined/diamond_give
#
# @within			uhc:in_game/player/misc/ore_mined/diamond_main
#
#
# @description		Diamant à donner
#

$give @s minecraft:diamond $(random)
$execute if score #double_ores uhc.scenario matches 1 run give @s minecraft:diamond $(random)
