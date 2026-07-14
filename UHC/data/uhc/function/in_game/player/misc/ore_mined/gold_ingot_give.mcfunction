
#> uhc:in_game/player/misc/ore_mined/gold_ingot_give
#
# @within			uhc:in_game/player/misc/ore_mined/gold_ingot_main
#
#
# @description		Lingot d'or à donner
#

$give @s minecraft:gold_ingot $(random)
$execute if score #double_ores uhc.scenario matches 1 run give @s minecraft:gold_ingot $(random)
