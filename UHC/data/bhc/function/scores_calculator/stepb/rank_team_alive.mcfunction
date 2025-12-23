
#> bhc:scores_calculator/stepb/rank_team_alive
#
# @within			bhc:scenario/XX/bingo_stepb/team_reward/case
#
#
# @description		Actualisation scores Étape B 
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.stepb.score.inv
scoreboard players remove #temp bhc.data 1

## Compte le nombre d'équipe avec un score supérieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data 0
execute as @e[type=marker,tag=UHC,distance=0..,tag=!bhc.count,scores={uhc.player.lives=1..}] if score @s bhc.stepa.score.inv <= #temp bhc.data run scoreboard players add #count bhc.data 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.stepb.rank.temp = #team uhc.data.temp.inv
scoreboard players operation @s bhc.stepb.rank.temp -= #count bhc.data
