
#> bhc:scores_calculator/kills/rank
#
# @within			bhc:scores_calculator/kills/player_killer
#
#
# @description		Actualisation scores kills 
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.kills.score.inv

## Compte le nombre d'équipe avec un score inférieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.kills.score.inv < #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.kills.rank.number = #team bhc.data.temp
scoreboard players operation @s bhc.kills.rank.number -= #count bhc.data.temp

## Scores
scoreboard players operation @s bhc.kills.rank.score.inv = #count bhc.data.temp
scoreboard players add @s[scores={bhc.kills.rank.number=1}] bhc.kills.rank.score.inv 1

# Équipes à moins de 0 point
execute if score @s bhc.kills.rank.score.inv matches ..0 run scoreboard players set @s bhc.kills.rank.score.inv 0

# Valeur de la catégorie pour le score total
scoreboard players operation @s bhc.kills.rank.score.inv *= #kills_multiplier bhc.data.setup

function bhc:scores_calculator/total/score
function bhc:timer/scoreboard/marker_name

# Rang Dégâts (facultatif, utilisé pour les scoreboards de fin)
function bhc:scores_calculator/kills/damage/rank
