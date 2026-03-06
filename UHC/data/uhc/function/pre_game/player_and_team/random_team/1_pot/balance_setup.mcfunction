
#> uhc:pre_game/player_and_team/random_team/1_pot/balance
#
# @within			uhc:pre_game/player_and_team/random_team/1_pot/main
#
#
# @description		Génération d'équipes aléatoires
#

# Calcul du nombre d'équipe souhaité
scoreboard players operation #team uhc.random_team = #player uhc.random_team
scoreboard players operation #team uhc.random_team /= #team_size uhc.random_team
scoreboard players add #team uhc.random_team 1

# Calcul du nombre de joueurs par équipe à prévoir en fonction du nombre d'équipe souhaité
scoreboard players operation #team_size uhc.random_team = #player uhc.random_team
scoreboard players operation #team_size uhc.random_team /= #team uhc.random_team
execute unless score #team uhc.random_team = #player_modulo uhc.random_team run scoreboard players add #team_size uhc.random_team 1
execute unless score #team uhc.random_team = #player_modulo uhc.random_team run scoreboard players add #count uhc.id.random_team 1
