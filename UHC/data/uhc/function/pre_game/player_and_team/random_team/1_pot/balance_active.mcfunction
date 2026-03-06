
#> uhc:pre_game/player_and_team/random_team/1_pot/balance
#
# @within			uhc:pre_game/player_and_team/random_team/1_pot/main
#
#
# @description		Génération d'équipes aléatoires
#

execute store result score #player_modulo uhc.random_team if entity @a[tag=uhc.player,scores={uhc.id.random_team=0}]
scoreboard players operation #player_modulo uhc.random_team %= #team_size uhc.random_team
execute if score #player_modulo uhc.random_team matches 1.. run scoreboard players add #count uhc.id.random_team 1
