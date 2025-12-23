
#> uhc:in_game/scenario/sound_paranoia/sound/stone
#
# @within			uhc:in_game/scenario/sound_paranoia/tick
#
#
# @description		Son de witch qui jette une potion sur un joueur
#

execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:entity.witch.throw hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 1 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:entity.witch.throw hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 1 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:entity.witch.throw hostile @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 1 1 0
execute if score @s uhc.scenario.sound_paranoia.tick matches 35 if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:entity.witch.throw hostile @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 1 1 0

execute if score @s uhc.scenario.sound_paranoia.tick matches 17 run playsound minecraft:entity.splash_potion.break neutral @a[tag=uhc.scenario.sound_paranoia.on] ^ ^ ^ 1 1 0

execute if score @s uhc.scenario.sound_paranoia.tick matches 17 run scoreboard players set @s uhc.scenario.sound_paranoia.tick 1
