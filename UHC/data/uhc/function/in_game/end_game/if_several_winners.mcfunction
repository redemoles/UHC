
#> uhc:in_game/end_game/several_winners
#
# @within			uhc:in_game/end_game/vanilla
#
#
# @description		Vérifie le nombre de gagnant si la fin de partie a été forcé
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @a[predicate=uhc:id/team] add uhc.temp
