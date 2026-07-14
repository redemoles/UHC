
#> uhc:in_game/player/misc/ore_mined/emerald_give
#
# @within			uhc:in_game/player/misc/ore_mined/emerald_main
#
#
# @description		Emeraude à donner
#

$give @s minecraft:emerald $(random)
$execute if score #double_ores uhc.scenario matches 1 run give @s minecraft:emerald $(random)
