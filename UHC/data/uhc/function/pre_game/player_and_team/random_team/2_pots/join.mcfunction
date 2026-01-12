
#> uhc:pre_game/player_and_team/random_team/2_pots/join
#
# @within			uhc:pre_game/player_and_team/random_team/2_pots/main
#
#
# @description		Génération d'équipes aléatoires
#

# Ajout dans une équipe
scoreboard players operation @s uhc.id.random_team = #team uhc.id.random_team
scoreboard players add #count uhc.id.random_team 1
execute if score #count uhc.id.random_team > #team_size uhc.data.setup run scoreboard players add #team uhc.id.random_team 1 
execute if score #count uhc.id.random_team > #team_size uhc.data.setup run scoreboard players set #count uhc.id.random_team 1
