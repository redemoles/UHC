
#> bhc:scores_calculator/kills/rank
#
# @within			bhc:scores_calculator/kills/player_killer
#
#
# @description		Actualisation scores kills 
#

## Enregistre le score d'équipe
scoreboard players operation #temp bhc.data = @s bhc.kills.damage_dealt.inv

## Compte le nombre d'équipe avec un score inférieur à celle sélectionnée
tag @s add bhc.count
scoreboard players set #count bhc.data.temp 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=!bhc.count] if score @s bhc.kills.damage_dealt.inv < #temp bhc.data run scoreboard players add #count bhc.data.temp 1
tag @s remove bhc.count

## Classement
scoreboard players operation @s bhc.kills.damage_dealt.rank = #team bhc.data.temp
scoreboard players operation @s bhc.kills.damage_dealt.rank -= #count bhc.data.temp
