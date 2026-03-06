
#> uhc:pre_game/player_and_team/random_team/1_pot/join
#
# @within			uhc:pre_game/player_and_team/random_team/1_pot/
#
#
# @description		Génération d'équipes aléatoires
#

# Ajout dans une équipe
scoreboard players operation @s uhc.id.random_team = #team uhc.id.random_team
scoreboard players add #count uhc.id.random_team 1
execute if score #count uhc.id.random_team > #team_size uhc.random_team run scoreboard players add #team uhc.id.random_team 1 
execute if score #count uhc.id.random_team > #team_size uhc.random_team run scoreboard players set #count uhc.id.random_team 1
execute if score #count uhc.id.random_team matches 1 if score #player_modulo uhc.random_team matches 1.. run function uhc:pre_game/player_and_team/random_team/1_pot/balance_active
execute as @r[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/1_pot/join
