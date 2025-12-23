
#> uhc:in_game/timer/hotbar/target/angle/
#
# @within			uhc:in_game/timer/hotbar/target/team_coords
#
#
# @description		Calcul de l'angle
#

scoreboard players set #distance_ab_1k uhc.player.target.cos.a 0
execute if score #distance_ab uhc.player.target.cos.a matches 01000.. run function uhc:in_game/timer/hotbar/target/angle/1000
execute if score #distance_ab uhc.player.target.cos.a matches ..-1000 run function uhc:in_game/timer/hotbar/target/angle/-1000

scoreboard players operation #angle_abc uhc.player.target.cos.a = #distance_ab uhc.player.target.cos.a
scoreboard players operation #angle_abc uhc.player.target.cos.a *= #1m uhc.data.numbers
scoreboard players operation #angle_abc uhc.player.target.cos.a /= #distance_bc uhc.player.target.cos.a

scoreboard players operation #temp uhc.player.target.cos.a = #distance_ab_1k uhc.player.target.cos.a
scoreboard players operation #temp uhc.player.target.cos.a *= #1m uhc.data.numbers
scoreboard players operation #temp uhc.player.target.cos.a /= #distance_bc uhc.player.target.cos.a
scoreboard players operation #temp uhc.player.target.cos.a *= #1000 uhc.data.numbers

scoreboard players operation #angle_abc uhc.player.target.cos.a += #temp uhc.player.target.cos.a
