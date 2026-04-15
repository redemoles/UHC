
#> uhc:in_game/scenario/sound_paranoia/sound/piglin_brute
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de piglin brute sur un joueur
#

scoreboard players add Piglin_brute uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.piglin_brute 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.piglin_brute 1

execute if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:entity.piglin_brute.angry hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.9 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:entity.piglin_brute.angry hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.9 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:entity.piglin_brute.angry hostile @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.9 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:entity.piglin_brute.angry hostile @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.9 1 0

function uhc:translation/in_game/scenario/sound_paranoia/piglin_brute
