
#> uhc:in_game/timer/border/dynamic/shrink_3
#
# @within			uhc:in_game/timer/border/shrink/3
#
#
# @description		Réduction dynamique en fonction des équipes restantes
#

## Taille de la bordure
scoreboard players set #shrink_3_size_end uhc.data.temp 32
scoreboard players operation #shrink_3_size_end uhc.data.temp *= #team uhc.data.temp.inv
scoreboard players remove #shrink_3_size_end uhc.data.temp 32
execute if score #shrink_3_size_end uhc.data.temp matches ..0 run scoreboard players set #shrink_3_size_end uhc.data.temp 32

## Durée de réduction de la bordure
scoreboard players operation #shrink_3_length uhc.data.temp = #border_size uhc.data.temp
scoreboard players operation #shrink_3_length uhc.data.temp -= #shrink_3_size_end uhc.data.temp
execute if score #border_size uhc.data.temp matches ..256 run scoreboard players operation #shrink_3_length uhc.data.temp *= #02 uhc.data.numbers

## Taille de bordure pour la commande worldborder
scoreboard players operation #shrink_3_size_end uhc.data.temp *= #02 uhc.data.numbers
scoreboard players add #shrink_3_size_end uhc.data.temp 1
