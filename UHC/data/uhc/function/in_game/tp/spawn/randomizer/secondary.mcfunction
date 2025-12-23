
#> uhc:in_game/tp/spawn/randomizer/secondary
#
# 
# @within			uhc:start/setup_players
#
# @description		Configuration du timer 
#

execute if score #spawn uhc.id.spawn matches 33 run scoreboard players set #spawn uhc.id.spawn 0
scoreboard players add #spawn uhc.id.spawn 1

# Skip le spawn si spawn déjà attributé 
execute if score #spawn uhc.id.spawn matches 01 unless score #spawn_01 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 02 unless score #spawn_02 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 03 unless score #spawn_03 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 04 unless score #spawn_04 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 05 unless score #spawn_05 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 06 unless score #spawn_06 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 07 unless score #spawn_07 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 08 unless score #spawn_08 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 09 unless score #spawn_09 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 10 unless score #spawn_10 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 11 unless score #spawn_11 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 12 unless score #spawn_12 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 13 unless score #spawn_13 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 14 unless score #spawn_14 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 15 unless score #spawn_15 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 16 unless score #spawn_16 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 17 unless score #spawn_17 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 18 unless score #spawn_18 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 19 unless score #spawn_19 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 20 unless score #spawn_20 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 21 unless score #spawn_21 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 22 unless score #spawn_22 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 23 unless score #spawn_23 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 24 unless score #spawn_24 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 25 unless score #spawn_25 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 26 unless score #spawn_26 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 27 unless score #spawn_27 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 28 unless score #spawn_28 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 29 unless score #spawn_29 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 30 unless score #spawn_30 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 31 unless score #spawn_31 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 32 unless score #spawn_32 uhc.id.spawn_check matches 2 run return run function uhc:in_game/tp/spawn/randomizer/secondary
execute if score #spawn uhc.id.spawn matches 33 run return fail

scoreboard players operation #team uhc.id.team = @r[tag=uhc.id.spawn] uhc.id.team
scoreboard players operation @a[predicate=uhc:id_team] uhc.id.spawn = #spawn uhc.id.spawn
tag @a[predicate=uhc:id_team] remove uhc.id.spawn
execute if entity @p[tag=uhc.id.spawn] run function uhc:in_game/tp/spawn/randomizer/secondary
