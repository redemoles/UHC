
#> uhc:in_game/entity/second
#
# @within			uhc:in_game/timer/second
#
#
# @description		Fonction seconde de base en jeu
#

## Nerf Happy Ghast
execute as @e[type=minecraft:happy_ghast] run function uhc:in_game/entity/happy_ghast/

## Entity check
scoreboard players operation #entity_check uhc.data.temp = #second uhc.data.temp
scoreboard players operation #entity_check uhc.data.temp %= #10 uhc.data.numbers
execute unless score #entity_check uhc.data.temp matches 0 run return fail
# Compteur avant kill items
execute as @e[type=minecraft:item] run function uhc:in_game/entity/item/second
# Falling blocks
execute as @e[type=minecraft:falling_block] run function uhc:in_game/entity/falling_block/second
# Bats
execute unless score #bats uhc.scenario matches 1 in minecraft:overworld as @e[type=minecraft:bat,distance=0..] at @s run tp ~ -196 ~
