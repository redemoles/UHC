
#> uhc:summary/ironman
#
# @within			
#
#
# @description		Résumé des morts
#

execute unless score #game_progress uhc.game_progress matches 2.. run return fail
data modify storage uhc:temp ironman.save_message set from storage uhc:temp ironman.message

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0.4

data modify storage uhc:temp ironman.tellraw.temp set from storage uhc:temp ironman.message[0]
function uhc:in_game/summary/ironman/text with storage uhc:temp ironman.tellraw
