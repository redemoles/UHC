
#> uhc:pre_game/player_and_team/random_team/test/selector
#
# @within			uhc:pre_game/player_and_team/random_team/test/
#
#
# @description		Génération d'équipes aléatoires
#

execute as @e[type=marker,sort=random,limit=1,tag=uhc.player.test,scores={uhc.id.random_team=0,uhc.id.random_team.ban=1..}] run function uhc:pre_game/player_and_team/random_team/test/join
execute if entity @n[type=marker,tag=uhc.player.test,scores={uhc.id.random_team=0,uhc.id.random_team.ban=1..}] run function uhc:pre_game/player_and_team/random_team/test/selector
execute as @e[type=marker,sort=random,tag=uhc.player.test,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/test/join
execute if entity @n[type=marker,tag=uhc.player.test,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/test/selector

