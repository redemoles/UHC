
#> uhc:in_game/player/misc/team_join/main
#
# @within			
#
#
# @description		Équipe d'affichage du joueur
#

execute unless score #game_progress uhc.game_progress matches 2.. if score #anonyme_team uhc.data.setup matches 1 run return run team join 091 @s
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 if score @s uhc.player.lives matches 1.. run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 if score @s uhc.player.lives matches 1.. run function uhc:in_game/scenario/biome_paranoia/by_nickname
function uhc:in_game/player/misc/team_join/known_team
function #plugin:in_game/player/team_join
