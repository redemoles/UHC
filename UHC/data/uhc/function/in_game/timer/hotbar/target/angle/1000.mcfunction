
#> uhc:in_game/timer/hotbar/target/angle/1000
#
# @within			uhc:in_game/timer/hotbar/target/angle/
#
#
# @description		Calcul de l'angle
#

scoreboard players add #distance_ab_1k uhc.player.target.cos.a 1
scoreboard players remove #distance_ab uhc.player.target.cos.a 1000
execute if score #distance_ab uhc.player.target.cos.a matches 1000.. run function uhc:in_game/timer/hotbar/target/angle/1000
