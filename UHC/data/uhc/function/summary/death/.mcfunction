
#> uhc:summary/death/
#
# @within			
#
#
# @description		Résumé des morts
#

execute unless score #game_progress uhc.game_progress matches 2.. run return fail
data modify storage uhc:temp death.save_message set from storage uhc:temp death.message

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0.4

data modify storage uhc:temp death.tellraw.temp set from storage uhc:temp death.message[0]
function uhc:summary/death/text with storage uhc:temp death.tellraw
