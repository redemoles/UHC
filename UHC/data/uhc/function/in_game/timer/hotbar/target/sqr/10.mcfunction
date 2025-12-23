
#> uhc:in_game/timer/hotbar/target/sqr/10
#
# @within			uhc:in_game/timer/hotbar/target/team_coords
#
#
# @description		Calcul de la distance entre les 2 joueurs
#

scoreboard players operation #sqr uhc.player.target.distance += #sqr+1 uhc.player.target.distance
scoreboard players add #distance uhc.player.target.distance 10
scoreboard players add #sqr+1 uhc.player.target.distance 200
execute if score @s uhc.player.target.distance.xxzz > #sqr uhc.player.target.distance run return run function uhc:in_game/timer/hotbar/target/sqr/10

scoreboard players remove #distance uhc.player.target.distance 10
scoreboard players remove #sqr+1 uhc.player.target.distance 200
scoreboard players operation #sqr uhc.player.target.distance -= #sqr+1 uhc.player.target.distance

scoreboard players operation #sqr+1 uhc.player.target.distance = #distance uhc.player.target.distance
scoreboard players operation #sqr+1 uhc.player.target.distance *= #02 uhc.data.numbers
scoreboard players add #sqr+1 uhc.player.target.distance 1

function uhc:in_game/timer/hotbar/target/sqr/
