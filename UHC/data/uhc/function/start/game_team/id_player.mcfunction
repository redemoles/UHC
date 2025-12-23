
#> uhc:start/id_player
#
# @within			uhc:start/game_team/
#
#
# @description		Id joueurs
#

# Id de joueur
scoreboard players add #next_id uhc.id.player 1
scoreboard players operation @s uhc.id.player = #next_id uhc.id.player
