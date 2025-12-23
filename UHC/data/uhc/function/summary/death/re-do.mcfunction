
#> uhc:summary/death/re-do
#
# @within			uhc:summary/death/text
#
#
# @description		Résumé des morts
#

data modify storage uhc:temp death.tellraw.temp set from storage uhc:temp death.message[0]
function uhc:summary/death/text with storage uhc:temp death.tellraw
