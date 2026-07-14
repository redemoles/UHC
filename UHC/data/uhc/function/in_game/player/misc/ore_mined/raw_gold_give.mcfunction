
#> uhc:in_game/player/misc/ore_mined/raw_gold_give
#
# @within			uhc:in_game/player/misc/ore_mined/raw_gold_main
#
#
# @description		Or brut à donner
#

$give @s minecraft:raw_gold $(random)
$execute if score #double_ores uhc.scenario matches 1 run give @s minecraft:raw_gold $(random)
