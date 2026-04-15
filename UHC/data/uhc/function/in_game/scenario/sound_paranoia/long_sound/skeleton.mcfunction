
#> uhc:in_game/scenario/sound_paranoia/long_sound/skeleton
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de squelette qui marche sur un joueur
#

scoreboard players add Skeleton uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.skeleton 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.skeleton 1

scoreboard players set @s uhc.scenario.sound_paranoia.tick 36

function uhc:translation/in_game/scenario/sound_paranoia/skeleton
