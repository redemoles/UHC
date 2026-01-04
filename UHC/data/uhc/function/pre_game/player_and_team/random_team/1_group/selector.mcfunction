
#> uhc:pre_game/player_and_team/random_team/1_group/selector
#
# @within			uhc:pre_game/player_and_team/random_team/1_group/main
#
#
# @description		Génération d'équipes aléatoires
#

execute as @r[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/1_group/join
execute if entity @p[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/1_group/selector
