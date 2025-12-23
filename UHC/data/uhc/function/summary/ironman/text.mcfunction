
#> uhc:summary/ironman/text
#
# @within			uhc:summary/ironman/
#
#
# @description		Résumé des morts
#

$tellraw @a $(temp)

data remove storage uhc:temp ironman.message[0]
execute if data storage uhc:temp ironman.message[0] run schedule function uhc:summary/ironman/re-do 10t
execute unless data storage uhc:temp ironman.message[0] run data modify storage uhc:temp ironman.message set from storage uhc:temp ironman.save_message
