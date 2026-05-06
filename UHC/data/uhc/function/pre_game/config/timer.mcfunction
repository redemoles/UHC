
#> uhc:pre_game/config/timer
#
# @within			uhc:start/
#
#
# @description		Fonction de configuration des timers dans la partie et de la border
#

## Configuration de la Worldborder
scoreboard players operation #shrink_1_size_start uhc.data.temp *= #02 uhc.data.numbers
scoreboard players operation #shrink_1_size_end uhc.data.temp *= #02 uhc.data.numbers
scoreboard players operation #shrink_2_size_end uhc.data.temp *= #02 uhc.data.numbers
scoreboard players operation #shrink_3_size_end uhc.data.temp *= #02 uhc.data.numbers
scoreboard players add #shrink_1_size_start uhc.data.temp 1
scoreboard players add #shrink_1_size_end uhc.data.temp 1
scoreboard players add #shrink_2_size_end uhc.data.temp 1
scoreboard players add #shrink_3_size_end uhc.data.temp 1
scoreboard players operation #shrink_1_length uhc.data.temp *= #60 uhc.data.numbers
scoreboard players operation #shrink_2_length uhc.data.temp *= #60 uhc.data.numbers
scoreboard players operation #shrink_3_length uhc.data.temp *= #60 uhc.data.numbers
execute store result storage uhc:temp border_size int 1 run scoreboard players get #shrink_1_size_start uhc.data.temp
execute store result storage uhc:temp border_length int 1 run scoreboard players get #shrink_1_length uhc.data.temp
execute in minecraft:overworld run function uhc:pre_game/config/wb_start with storage uhc:temp
execute in minecraft:the_nether run function uhc:pre_game/config/wb_start with storage uhc:temp
execute in minecraft:the_end run function uhc:pre_game/config/wb_start with storage uhc:temp

## Scoreboard d'affichage
scoreboard objectives setdisplay sidebar
