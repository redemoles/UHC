
#> uhc:in_game/scenario/sound_paranoia/long_sound/water_bucket
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de flèche qui touche le sol sur un joueur
#

scoreboard players add Water_bucket uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.water_bucket 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.water_bucket 1

scoreboard players set @s uhc.scenario.sound_paranoia.tick 6

function uhc:translation/in_game/scenario/sound_paranoia/water_bucket
