
#> uhc:in_game/summary/death/text
#
# @within			uhc:summary/death
#
#
# @description		Résumé des morts
#

function uhc:translation/in_game/summary_death with storage uhc:temp death.tellraw
scoreboard players remove #summary_count uhc.data.temp 1

data remove storage uhc:temp death.message[0]
execute if data storage uhc:temp death.message[0] run schedule function uhc:in_game/summary/death/re-do 10t
execute unless data storage uhc:temp death.message[0] run data modify storage uhc:temp death.message set from storage uhc:temp death.save_message
