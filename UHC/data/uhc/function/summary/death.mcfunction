
#> uhc:summary/death
#
# @within			
#
#
# @description		Résumé des morts
#

execute unless score #game_progress uhc.game_progress matches 2.. run return fail
execute if score #summary_count uhc.data.temp matches 1.. run return fail

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0.4

data modify storage uhc:temp death.save_message set from storage uhc:temp death.message
data modify storage uhc:temp death.tellraw.temp set from storage uhc:temp death.message[0]
scoreboard players operation #summary_count uhc.data.temp = #summary_count uhc.player.death.summary
function uhc:in_game/summary/death/text

scoreboard players set #seconds uhc.game_progress -270
