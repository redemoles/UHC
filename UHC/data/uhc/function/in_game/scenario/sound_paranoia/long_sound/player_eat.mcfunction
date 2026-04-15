
#> uhc:in_game/scenario/sound_paranoia/long_sound/player_eat
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de joueur qui mange sur un joueur
#

scoreboard players add Player_eat uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.player_eat 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.player_eat 1

scoreboard players set @s uhc.scenario.sound_paranoia.tick 36

function uhc:translation/in_game/scenario/sound_paranoia/player_eat
