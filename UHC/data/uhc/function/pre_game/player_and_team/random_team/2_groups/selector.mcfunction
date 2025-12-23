
#> uhc:pre_game/player_and_team/random_team/2_groups/selector
#
# @within			uhc:pre_game/player_and_team/random_team/2_groups/
#
#
# @description		Génération d'équipes aléatoires
#

execute if entity @p[tag=uhc.player,scores={uhc.id.team=192,uhc.id.random_team=0,uhc.id.random_team.ban=1..}] as @r[tag=uhc.player,scores={uhc.id.team=92,uhc.id.random_team=0,uhc.id.random_team.ban=1..}] run function uhc:pre_game/player_and_team/random_team/2_groups/join
execute as @r[tag=uhc.player,scores={uhc.id.team=192,uhc.id.random_team=0,uhc.id.random_team.ban=1..}] run function uhc:pre_game/player_and_team/random_team/2_groups/join
execute if entity @p[tag=uhc.player,scores={uhc.id.team=192,uhc.id.random_team=0,uhc.id.random_team.ban=1..}] if entity @p[tag=uhc.player,scores={uhc.id.team=92,uhc.id.random_team=0,uhc.id.random_team.ban=1..}] run return run function uhc:pre_game/player_and_team/random_team/2_groups/selector

execute as @r[tag=uhc.player,scores={uhc.id.team=92,uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/2_groups/join
execute as @r[tag=uhc.player,scores={uhc.id.team=192,uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/2_groups/join

execute if entity @p[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/2_groups/selector
