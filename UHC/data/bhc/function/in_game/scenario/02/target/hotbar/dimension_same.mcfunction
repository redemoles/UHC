
#> bhc:in_game/scenario/02/target/hotbar/dimension_same
#
# @within			bhc:in_game/scenario/02/target/hotbar/team_coords
#
#
# @description		Ajout des joueurs de l'équipe dans la Hotbar de Target 
#

# Révélation cible
execute if score @s bhc.target.known matches 0 if score #distance uhc.player.target.distance matches ..80 in uhc:lobby run function bhc:in_game/scenario/02/target/hotbar/target_reveal

execute if score @s bhc.target.known matches 1 run function bhc:in_game/scenario/02/target/hotbar/dimension_same_1
execute if score @s bhc.target.known matches 0 run function bhc:in_game/scenario/02/target/hotbar/dimension_same_2
execute in uhc:lobby run data modify storage uhc:temp target.distance append from block 0 -61 0 front_text.messages[0]
