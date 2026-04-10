
#> uhc:start/game_ffa/id_player
#
# @within			uhc:start/setup_players
#
#
# @description		Fonction de configuration de la partie
#

# Id de joueur
scoreboard players add #next_id uhc.id.player 1
scoreboard players operation @s uhc.id.player = #next_id uhc.id.player
scoreboard players operation @s uhc.id.team = @s uhc.id.player
summon marker 1 1 1 {Tags:["uhc.inactive","UHC"]}
team join 099 @s
