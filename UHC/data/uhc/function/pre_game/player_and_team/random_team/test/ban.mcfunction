
#> uhc:pre_game/player_and_team/random_team/test/ban
#
# @within			uhc:pre_game/player_and_team/random_team/test/join
#
#
# @description		Génération d'équipes aléatoires
#

tag @s add uhc.random_team.ban
execute unless entity @n[type=minecraft:marker,tag=!uhc.random_team.ban,tag=uhc.player.test,scores={uhc.id.random_team=0,uhc.id.random_team.ban=1..}] run tag @s add uhc.random_team.ban_list.empty
execute if entity @s[tag=uhc.random_team.ban_list.empty] as @e[type=minecraft:marker,sort=random,limit=1,tag=!uhc.random_team.ban,tag=uhc.player.test,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/test/join
execute if entity @s[tag=!uhc.random_team.ban_list.empty] as @e[type=minecraft:marker,sort=random,limit=1,tag=!uhc.random_team.ban,tag=uhc.player.test,scores={uhc.id.random_team=0,uhc.id.random_team.ban=1..}] run function uhc:pre_game/player_and_team/random_team/test/join
tag @s remove uhc.random_team.ban_list.empty
