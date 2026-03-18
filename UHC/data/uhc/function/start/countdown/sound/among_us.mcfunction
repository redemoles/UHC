
#> uhc:start/countdown/sound/among_us
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Lancement de la partie
#

execute if score #tick_start uhc.data.temp matches 4 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.707 1
execute if score #tick_start uhc.data.temp matches 4 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.707 1
execute if score #tick_start uhc.data.temp matches 16 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.414 1
execute if score #tick_start uhc.data.temp matches 22 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.68 1
execute if score #tick_start uhc.data.temp matches 30 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.89 1
execute if score #tick_start uhc.data.temp matches 42 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2 1
