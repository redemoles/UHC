
#> bhc:scores_calculator/death/ironman/rank
#
# @within			bhc:scores_calculator/death/ironman/bonus
#
#
# @description		Actualisation scores ironman 
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.ironman.timer.inv
scoreboard players remove #temp bhc.data 1

## Compte le nombre d'équipe avec un score supérieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data 0
execute as @e[type=marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.ironman.timer.inv <= #temp bhc.data run scoreboard players add #count bhc.data 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.ironman.rank = #team bhc.data
scoreboard players operation @s bhc.ironman.rank -= #count bhc.data

## Scores
scoreboard players operation @s bhc.ironman.score.inv = #count bhc.data


# Équipes à moins de 0 point
execute if score @s bhc.ironman.score.inv matches ..0 run scoreboard players set @s bhc.ironman.score.inv 0

# Valeur en minute pour la catégorie Survie
scoreboard players operation @s bhc.ironman.score.inv *= #02 uhc.data.numbers
