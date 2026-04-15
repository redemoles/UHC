
#> uhc:in_game/player/spec/revive/new_player/team_joined/new_team
#
# @within			uhc:in_game/player/spec/revive/new_player/team_joined/player
#
#
# @description		Une nouvelle équipe doit être ajouté
#

## Activation du marker d'équipe
# Tag + Nom
function uhc:translation/in_game/player_spec_revive_create_team
# Point d'apparition
execute if score #spawn_list uhc.id.spawn matches 3 run function uhc:in_game/tp/spawn/randomizer/tertiary
execute if score #spawn_list uhc.id.spawn matches 2 run function uhc:in_game/tp/spawn/randomizer/secondary
execute unless score #spawn_list uhc.id.spawn matches 2.. run function uhc:in_game/tp/spawn/randomizer/primary

## Ironman
execute if score #minutes uhc.data.temp matches ..14 run scoreboard players add #team uhc.scenario.ironman 1

## Mode de jeu
# Bingo UHC
execute if score #bhc uhc.gamemode matches 1 run scoreboard players add #team bhc.data.temp 1
execute if score #bhc uhc.gamemode matches 1 run function bhc:start/team_config
execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/stepa/rank
execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/stepb/rank
execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/bingos/rank
execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/kills/scores
execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/death/update
execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/total/rank
