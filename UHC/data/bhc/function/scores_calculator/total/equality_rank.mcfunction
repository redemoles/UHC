
#> bhc:scores_calculator/total/equality_rank
#
# @within			bhc:scores_calculator/total/rank
#
#
# @description		Calcul pour départager les équipes aux scores finaux égaux
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.total.tie_break.score

## Compte le nombre d'équipe avec un score supérieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.total.tie_break.score > #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement d'équipe
scoreboard players operation @s bhc.total.tie_break.rank = #team bhc.data.temp
scoreboard players operation @s bhc.total.tie_break.rank -= #count bhc.data.temp

## Somme des scores
scoreboard players operation @s bhc.total.score.inv = @s bhc.stepa.rank.score.inv
scoreboard players operation @s bhc.total.score.inv += @s bhc.stepb.rank.score.inv
scoreboard players operation @s bhc.total.score.inv += @s bhc.kills.rank.score.inv
scoreboard players operation @s bhc.total.score.inv += @s bhc.death.rank.score.inv
# Ajout des points d'anti-égalité
scoreboard players operation @s bhc.total.score.inv *= #100 uhc.data.numbers
scoreboard players operation @s bhc.total.score.inv += @s bhc.total.tie_break.rank
