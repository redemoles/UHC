
#> uhc:pre_game/world_check/spawns_2
#
# @within			uhc:pre_game/world_check/spawns
#
#
# @description		Vérification des points de spawns des équipes
#

## Option sélectionné
execute if score @s uhc.spawn.check matches 01 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_01 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 02 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_02 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 03 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_03 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 04 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_04 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 05 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_05 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 06 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_06 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 07 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_07 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 08 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_08 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 09 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_09 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 10 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_10 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 11 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_11 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 12 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_12 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 13 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_13 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 14 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_14 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 15 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_15 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 16 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_16 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 17 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_17 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 18 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_18 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 19 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_19 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 20 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_20 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 21 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_21 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 22 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_22 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 23 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_23 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 24 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_24 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 25 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_25 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 26 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_26 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 27 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_27 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 28 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_28 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 29 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_29 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 30 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_30 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 31 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_31 uhc.id.spawn_check = @s uhc.id.spawn_check
execute if score @s uhc.spawn.check matches 32 if score @s uhc.id.spawn_check matches 1.. run scoreboard players operation #spawn_32 uhc.id.spawn_check = @s uhc.id.spawn_check

## Point suivant
scoreboard players add @s uhc.spawn.check 1
execute if score @s uhc.spawn.check matches 01..32 run function uhc:translation/pre_game/world_check_trigger
