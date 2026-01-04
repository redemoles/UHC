
#> uhc:pre_game/player_and_team/random_team/2_groups/selector
#
# @within			uhc:pre_game/player_and_team/random_team/2_groups/main
#
#
# @description		Génération d'équipes aléatoires
#

execute as @r[tag=uhc.player,scores={uhc.id.team=92,uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/2_groups/join
execute as @r[tag=uhc.player,scores={uhc.id.team=192,uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/2_groups/join

execute if entity @p[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/2_groups/selector
