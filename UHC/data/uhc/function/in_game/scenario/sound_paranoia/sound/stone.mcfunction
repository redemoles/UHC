
#> uhc:in_game/scenario/sound_paranoia/sound/stone
#
# @within			uhc:in_game/scenario/sound_paranoia/tick
#
#
# @description		Son de block de stone sur un joueur
#

execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.2 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.2 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.2 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.2 0.8 0

execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.3 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.3 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.3 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 11 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:block.stone.break block @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.3 0.8 0

execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.2 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.2 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.2 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.2 0.8 0

execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.3 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.3 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.3 0.8 0
execute if score @s uhc.scenario.sound_paranoia.sound matches 12 if score @s uhc.scenario.sound_paranoia.tick matches 17 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:block.deepslate.break block @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.3 0.8 0

execute if score @s uhc.scenario.sound_paranoia.tick matches 17 run scoreboard players set @s uhc.scenario.sound_paranoia.tick 1
