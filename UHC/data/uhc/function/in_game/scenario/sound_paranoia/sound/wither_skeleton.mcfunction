
#> uhc:in_game/scenario/sound_paranoia/sound/wither_skeleton
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de charge de vent sur un joueur
#

scoreboard players add Wither_skeleton uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.wither_skeleton 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.wither_skeleton 1

execute if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:entity.wither_skeleton.hurt hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.5 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:entity.wither_skeleton.hurt hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.5 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:entity.wither_skeleton.hurt hostile @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.5 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:entity.wither_skeleton.hurt hostile @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.5 1 0

execute if score @s uhc.scenario.sound_paranoia.stereo matches 1 run playsound minecraft:entity.generic.small_fall hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-4 ^ ^-2 0.5 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 2 run playsound minecraft:entity.generic.small_fall hostile @a[tag=uhc.scenario.sound_paranoia.on] ^-1 ^ ^-4 0.5 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 3 run playsound minecraft:entity.generic.small_fall hostile @a[tag=uhc.scenario.sound_paranoia.on] ^1 ^ ^-4 0.5 1 0
execute if score @s uhc.scenario.sound_paranoia.stereo matches 4 run playsound minecraft:entity.generic.small_fall hostile @a[tag=uhc.scenario.sound_paranoia.on] ^4 ^ ^-2 0.5 1 0

function uhc:translation/in_game/scenario/sound_paranoia/wither_skeleton
