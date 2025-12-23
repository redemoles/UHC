
#> bhc:scores_calculator/stepb/rank
#
# @within			bhc:scenario/XX/bingo_stepb/team_reward/case
#
#
# @description		Actualisation scores Étape B 
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.stepb.score.inv

## Compte le nombre d'équipe avec un score inférieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data 0
execute as @e[type=marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.stepb.score.inv < #temp bhc.data run scoreboard players add #count bhc.data 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.stepb.rank.number = #team bhc.data
scoreboard players operation @s bhc.stepb.rank.number -= #count bhc.data

## Scores
scoreboard players operation @s bhc.stepb.rank.score.inv = #count bhc.data
scoreboard players add @s[scores={bhc.stepb.rank.number=1}] bhc.stepb.rank.score.inv 1

# Équipes à moins de 0 point
execute if score @s bhc.stepb.rank.score.inv matches ..0 run scoreboard players set @s bhc.stepb.rank.score.inv 0

# Valeur de la catégorie pour le score total
scoreboard players operation @s bhc.stepb.rank.score.inv *= #stepb_multiplier bhc.data.setup

# Ajout score Bingo Spécial dans score Bingo
scoreboard players operation @s bhc.bingo.score.inv = @s bhc.stepa.rank.score.inv
scoreboard players operation @s bhc.bingo.score.inv += @s bhc.stepb.rank.score.inv
scoreboard players operation @s bhc.bingo.score.inv *= #100 uhc.data.numbers
scoreboard players operation @s bhc.bingo.score.inv += @s uhc.id.team

# Classement Bingo Spécial → Score perso → Score d'affichage pour les messages
scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepb.rank.number = @s bhc.stepb.rank.number
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepb.rank.score.inv = @s bhc.stepb.rank.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.bingo.score.inv = @s bhc.bingo.score.inv

function bhc:scores_calculator/total/score
function bhc:timer/scoreboard/marker_name
