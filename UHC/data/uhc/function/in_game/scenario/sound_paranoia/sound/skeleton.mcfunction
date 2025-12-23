
#> uhc:in_game/scenario/sound_paranoia/sound/skeleton
#
# @within			uhc:in_game/scenario/sound_paranoia/tick
#
#
# @description		Son de pas de squelette
#

execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.2 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.2 1 0

execute if score @s uhc.scenario.sound_paranoia.tick matches 21 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.3 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 21 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.3 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 21 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.3 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 21 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.3 1 0

execute if score @s uhc.scenario.sound_paranoia.tick matches 7 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.4 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 7 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.4 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 7 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.4 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 7 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:entity.skeleton.step hostile @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.4 1 0

execute if score @s uhc.scenario.sound_paranoia.tick matches 7 run scoreboard players set @s uhc.scenario.sound_paranoia.tick 1
