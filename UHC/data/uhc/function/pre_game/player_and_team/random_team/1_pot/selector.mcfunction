
#> uhc:pre_game/player_and_team/random_team/1_pot/selector
#
# @within			uhc:pre_game/player_and_team/random_team/1_pot/main
#
#
# @description		Génération d'équipes aléatoires
#

execute as @r[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/1_pot/join
execute if entity @p[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/1_pot/selector
