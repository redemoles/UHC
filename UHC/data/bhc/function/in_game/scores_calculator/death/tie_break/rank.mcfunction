
#> bhc:in_game/scores_calculator/death/tie_break/rank
#
# @within			bhc:in_game/scores_calculator/death/update
#
#
# @description		Rang d'équipe en survie sans prendre en compte les bonus  
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.death.tie_break.score.inv
scoreboard players remove #temp bhc.data 1

## Compte le nombre d'équipe avec un score supérieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.death.tie_break.score.inv <= #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.death.tie_break.rank.number = #team bhc.data.temp
scoreboard players operation @s bhc.death.tie_break.rank.number -= #count bhc.data.temp

## Scores
scoreboard players operation @s bhc.death.tie_break.rank.score = #count bhc.data.temp
