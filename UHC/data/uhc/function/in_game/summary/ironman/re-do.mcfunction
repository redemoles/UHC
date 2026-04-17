
#> uhc:in_game/summary/ironman/re-do
#
# @within			uhc:in_game/summary/ironman/text
#
#
# @description		Résumé des morts
#

data modify storage uhc:temp ironman.tellraw.temp set from storage uhc:temp ironman.message[0]
function uhc:in_game/summary/ironman/text with storage uhc:temp ironman.tellraw
