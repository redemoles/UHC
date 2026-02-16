
#> bhc:scores_calculator/death/rank
#
# @within			bhc:scores_calculator/death/update
#
#
# @description		Actualisation scores death 
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.death.score.inv
scoreboard players remove #temp bhc.data 1

## Compte le nombre d'équipe avec un score supérieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.death.score.inv <= #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.death.rank.number = #team bhc.data.temp
scoreboard players operation @s bhc.death.rank.number -= #count bhc.data.temp

## Scores
scoreboard players operation @s bhc.death.rank.score.inv = #count bhc.data.temp
scoreboard players add @s[scores={bhc.death.rank.number=1}] bhc.death.rank.score.inv 1

# Équipes à moins de 0 point
execute if score @s bhc.death.rank.score.inv matches ..0 run scoreboard players set @s bhc.death.rank.score.inv 0

# Valeur de la catégorie pour le score total
scoreboard players operation @s bhc.death.rank.score.inv *= #death_multiplier bhc.data.setup

execute unless score @s bhc.kills.score.inv matches 10000000.. run function bhc:scores_calculator/kills/scores_1
