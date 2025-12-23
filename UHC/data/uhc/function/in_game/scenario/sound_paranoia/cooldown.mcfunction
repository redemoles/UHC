
#> uhc:in_game/scenario/sound_paranoia/cooldown
#
# @within			uhc:in_game/timer/second
#
#
# @description		Nombre de secondes avant qu'un son se joue sur un joueur
#

scoreboard players remove @s uhc.scenario.sound_paranoia.wait 1
execute if score @s uhc.scenario.sound_paranoia.wait matches 0 run function uhc:in_game/scenario/sound_paranoia/trigger
