
#> uhc:in_game/player/misc/ore_mined/blood_diamond/diamond_gift
#
# @within			uhc:in_game/*
#
#
# @description		Diamant à donner
#

function uhc:in_game/player/misc/ore_mined/fortune
execute as @p[tag=uhc.blood_diamond.receive] run function uhc:in_game/player/misc/ore_mined/diamond_give with storage uhc:temp fortune
