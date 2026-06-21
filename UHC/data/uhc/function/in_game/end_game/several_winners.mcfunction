
#> uhc:in_game/end_game/several_winners
#
# @within			uhc:in_game/end_game/vanilla
#
#
# @description		Vérifie le nombre de gagnant si la fin de partie a été forcé
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

execute in uhc:lobby run function uhc:translation/in_game/endgame_mid_text
tag @a remove uhc.temp
execute as @p[tag=uhc.temp] run function uhc:in_game/end_game/several_winners
