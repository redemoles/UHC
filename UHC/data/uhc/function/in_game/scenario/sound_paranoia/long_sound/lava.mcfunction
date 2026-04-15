
#> uhc:in_game/scenario/sound_paranoia/long_sound/lava
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de lave recouverte par de l'eau sur un joueur
#

scoreboard players add Lava uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.lava 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.lava 1

scoreboard players set @s uhc.scenario.sound_paranoia.tick 44

function uhc:translation/in_game/scenario/sound_paranoia/lava
