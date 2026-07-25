
#> uhc:in_game/summary/ironman/text
#
# @within			uhc:summary/ironman
#
#
# @description		Résumé des morts
#

function uhc:translation/in_game/summary_ironman with storage uhc:temp ironman.tellraw
scoreboard players remove #summary_count uhc.data.temp 1

data remove storage uhc:temp ironman.message[0]
execute if data storage uhc:temp ironman.message[0] run schedule function uhc:in_game/summary/ironman/re-do 10t
execute unless data storage uhc:temp ironman.message[0] run data modify storage uhc:temp ironman.message set from storage uhc:temp ironman.save_message
