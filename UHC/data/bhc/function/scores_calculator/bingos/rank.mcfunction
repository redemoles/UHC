
#> bhc:scores_calculator/bingos/rank
#
# @within			bhc:scenario/XX/bingo_bingos/team_reward/case
#
#
# @description		Classement du scores des 2 bingos cumulés
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.bingo.score.inv

## Compte le nombre d'équipe avec un score inférieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data 0
execute as @e[type=marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.bingo.score.inv < #temp bhc.data run scoreboard players add #count bhc.data 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.bingo.rank.number = #team bhc.data
scoreboard players operation @s bhc.bingo.rank.number -= #count bhc.data

## Scores
scoreboard players operation @s bhc.bingo.rank.score.inv = #count bhc.data

# Classement Bingo Spécial → Score perso → Score d'affichage pour les messages
scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @a[predicate=uhc:id_team] bhc.bingo.rank.number = @s bhc.bingo.rank.number
scoreboard players operation @a[predicate=uhc:id_team] bhc.bingo.rank.score.inv = @s bhc.bingo.rank.score.inv

function bhc:scores_calculator/total/score
function bhc:timer/scoreboard/marker_name
