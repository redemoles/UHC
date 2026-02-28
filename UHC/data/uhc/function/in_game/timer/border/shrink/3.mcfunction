
#> uhc:in_game/timer/border/shrink/3
#
# @within			uhc:in_game/timer/minute/main
#
#
# @description		Function générale de 3e réduction de la bordure
#

## Si la 3e réduction est configuré pour être dynamique
execute if score #shrink_dynamic uhc.data.temp matches 3 run function uhc:in_game/timer/border/dynamic/shrink_3

## Macro de taille et durée de réduction
execute store result storage uhc:temp border_size int 1 run scoreboard players get #shrink_3_size_end uhc.data.temp
execute store result storage uhc:temp border_length int 1 run scoreboard players get #shrink_3_length uhc.data.temp

## Réduction de bordure
execute in minecraft:overworld run function uhc:in_game/timer/border/size with storage uhc:temp
execute in minecraft:the_nether run function uhc:in_game/timer/border/size with storage uhc:temp
execute in minecraft:the_end run function uhc:in_game/timer/border/size with storage uhc:temp

## Annonces
scoreboard players remove #shrink_3_size_end uhc.data.temp 1
execute store result storage uhc:temp border_size int 0.5 run scoreboard players get #shrink_3_size_end uhc.data.temp
execute store result storage uhc:temp border_length int 0.0167 run scoreboard players get #shrink_3_length uhc.data.temp
scoreboard players add #shrink_3_size_end uhc.data.temp 1
