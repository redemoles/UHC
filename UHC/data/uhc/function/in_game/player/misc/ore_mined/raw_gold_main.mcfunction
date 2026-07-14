
#> uhc:in_game/player/misc/ore_mined/raw_gold_main
#
# @within			uhc:in_game/*
#
#
# @description		Or à donner
#

function uhc:in_game/player/misc/ore_mined/fortune
execute if score #cut_clean uhc.scenario matches 0 run function uhc:in_game/player/misc/ore_mined/raw_gold_give with storage uhc:temp fortune
execute if score #cut_clean uhc.scenario matches 1 run function uhc:in_game/player/misc/ore_mined/gold_ingot_give with storage uhc:temp fortune
