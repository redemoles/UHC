
#> uhc:start/countdown/sound/wii_theme
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Lancement de la partie
#

execute if score #tick_start uhc.data.temp matches 4 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.667 1
execute if score #tick_start uhc.data.temp matches 4 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.794 1
execute if score #tick_start uhc.data.temp matches 4 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1 1
execute if score #tick_start uhc.data.temp matches 16 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1.189 1
execute if score #tick_start uhc.data.temp matches 22 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1.498 1
execute if score #tick_start uhc.data.temp matches 34 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1.189 1
execute if score #tick_start uhc.data.temp matches 46 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1 1
execute if score #tick_start uhc.data.temp matches 52 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.561 1
execute if score #tick_start uhc.data.temp matches 52 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.794 1
execute if score #tick_start uhc.data.temp matches 58 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.561 1
execute if score #tick_start uhc.data.temp matches 58 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.794 1
execute if score #tick_start uhc.data.temp matches 64 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.561 1
execute if score #tick_start uhc.data.temp matches 64 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0.794 1
