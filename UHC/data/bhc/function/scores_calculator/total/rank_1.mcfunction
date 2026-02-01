
#> bhc:scores_calculator/total/rank_1
#
# @within			bhc:scores_calculator/total/rank
#
#
# @description		Attribution aux joueurs de leurs données d'équipe
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.total.score.inv

## Compte le nombre d'équipe avec un score inférieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.total.score.inv < #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement d'équipe
scoreboard players operation @s bhc.total.rank.number = #team bhc.data.temp
scoreboard players operation @s bhc.total.rank.number -= #count bhc.data.temp
