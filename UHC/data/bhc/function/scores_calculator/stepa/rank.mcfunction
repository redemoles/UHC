
#> bhc:scores_calculator/stepa/rank
#
# @within			bhc:scenario/XX/bingo_stepa/team_reward/case
#
#
# @description		Actualisation scores Étape A 
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.stepa.score.inv

## Compte le nombre d'équipe avec un score inférieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.stepa.score.inv < #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.stepa.rank.number = #team bhc.data.temp
scoreboard players operation @s bhc.stepa.rank.number -= #count bhc.data.temp

## Scores
scoreboard players operation @s bhc.stepa.rank.score.inv = #count bhc.data.temp
scoreboard players add @s[scores={bhc.stepa.rank.number=1}] bhc.stepa.rank.score.inv 1

# Équipes à moins de 0 point
execute if score @s bhc.stepa.rank.score.inv matches ..0 run scoreboard players set @s bhc.stepa.rank.score.inv 0

# Valeur de la catégorie pour le score total
scoreboard players operation @s bhc.stepa.rank.score.inv *= #stepa_multiplier bhc.data.setup

# Ajout score Bingo Classique dans score Bingo
scoreboard players operation @s bhc.bingo.score.inv = @s bhc.stepa.rank.score.inv
scoreboard players operation @s bhc.bingo.score.inv += @s bhc.stepb.rank.score.inv
scoreboard players operation @s bhc.bingo.score.inv *= #100 uhc.data.numbers
scoreboard players operation @s bhc.bingo.score.inv += @s uhc.id.team

# Classement Bingo Classique → Score perso → Score d'affichage pour les messages
scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @a[predicate=uhc:id/team] bhc.stepa.rank.number = @s bhc.stepa.rank.number
scoreboard players operation @a[predicate=uhc:id/team] bhc.stepa.rank.score.inv = @s bhc.stepa.rank.score.inv
scoreboard players operation @a[predicate=uhc:id/team] bhc.bingo.score.inv = @s bhc.bingo.score.inv

function bhc:scores_calculator/total/score
function bhc:timer/scoreboard/marker_name
