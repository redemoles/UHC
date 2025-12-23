
#> uhc:in_game/timer/hotbar/target/sqr/
#
# @within			uhc:in_game/timer/hotbar/target/team_coords
#
#
# @description		Calcul de la distance entre les 2 joueurs
#

scoreboard players operation #sqr uhc.player.target.distance += #sqr+1 uhc.player.target.distance
scoreboard players add #distance uhc.player.target.distance 1
scoreboard players add #sqr+1 uhc.player.target.distance 2
execute if score @s uhc.player.target.distance.xxzz > #sqr uhc.player.target.distance run function uhc:in_game/timer/hotbar/target/sqr/
