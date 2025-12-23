
#> uhc:in_game/timer/hotbar/target/cos_angle/
#
# @within			uhc:in_game/timer/hotbar/target/team_coords
#
#
# @description		Calcul de l'angle
#

# Si la cible est plus au nord que le joueur
scoreboard players operation #temp uhc.player.rotation = @s uhc.player.rotation
execute if score #distance_ac uhc.player.target.cos.a matches 0.. if score #distance_ab uhc.player.target.cos.a matches 0.. run scoreboard players remove #temp uhc.player.rotation 1800
execute if score #distance_ac uhc.player.target.cos.a matches 0.. unless score #distance_ab uhc.player.target.cos.a matches 0.. run scoreboard players add #temp uhc.player.rotation 1800
execute if score #distance_ac uhc.player.target.cos.a matches 0.. run scoreboard players operation #temp uhc.player.rotation *= #-1 uhc.data.numbers

# Détermination de l'angle
scoreboard players set #angle uhc.player.rotation 0
execute if score #angle_abc uhc.player.target.cos.a matches -999989..1000010 run function uhc:in_game/timer/hotbar/target/cos_angle/0-180/
execute if score #angle_abc uhc.player.target.cos.a matches ..-999990 run function uhc:in_game/timer/hotbar/target/cos_angle/180-360/
scoreboard players operation #angle uhc.player.rotation += #temp uhc.player.rotation
scoreboard players remove #angle uhc.player.rotation 900

# Résultat à remettre entre -180.0 et 180.0°
execute if score #angle uhc.player.rotation matches ..-1800 run scoreboard players add #angle uhc.player.rotation 3600
execute if score #angle uhc.player.rotation matches 1800.. run scoreboard players remove #angle uhc.player.rotation 3600
execute if score #distance_ac uhc.player.target.cos.a matches 0.. run scoreboard players operation #angle uhc.player.rotation *= #-1 uhc.data.numbers

# Score hotbar
execute if score #angle uhc.player.rotation matches ..-0150 run scoreboard players add #angle uhc.player.rotation 3600
