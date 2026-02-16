
#> bhc:scores_calculator/death/tie_break/chill_mode/rank
#
# @within			bhc:scores_calculator/death/tie_break/chill_mode/
#
#
# @description		Rang d'équipe en survie avec départage sur les dégâts PvE émis  
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.chill_mode.tie_break.score
scoreboard players remove #temp bhc.data 1

## Compte le nombre d'équipe avec un score supérieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.chill_mode.tie_break.score <= #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.chill_mode.tie_break.rank = #team bhc.data.temp
scoreboard players operation @s bhc.chill_mode.tie_break.rank -= #count bhc.data.temp
