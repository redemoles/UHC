
#> uhc:in_game/summary/death/text
#
# @within			uhc:summary/death
#
#
# @description		Résumé des morts
#

$tellraw @a $(temp)

data remove storage uhc:temp death.message[0]
execute if data storage uhc:temp death.message[0] run schedule function uhc:in_game/summary/death/re-do 10t
execute unless data storage uhc:temp death.message[0] run data modify storage uhc:temp death.message set from storage uhc:temp death.save_message
