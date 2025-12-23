
#> uhc:in_game/scenario/sound_paranoia/sound/stone
#
# @within			uhc:in_game/scenario/sound_paranoia/tick
#
#
# @description		Son de block de stone sur un joueur
#

execute if score @s uhc.scenario.sound_paranoia.tick matches 5 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:item.bucket.empty block @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 5 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:item.bucket.empty block @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 5 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:item.bucket.empty block @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 5 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:item.bucket.empty block @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.2 1 0

execute if score @s uhc.scenario.sound_paranoia.tick matches 1 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:item.bucket.fill block @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 1 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:item.bucket.fill block @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 1 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:item.bucket.fill block @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 1 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:item.bucket.fill block @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.2 1 0
