
#> uhc:translation/in_game/scenario/rewarding_longshots_50_100
#
# @within			uhc:in_game/scenario/rewarding_longshots/50_100
#
#
# @description		Joueur touché entre 50 et 100 blocs
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Tu as réalisé un longshot !","color":"#FFFFFF"},{"text":"\n+1 lingot de fer","color":"#CFCFCF"},{"text":"\n+1 lingot d'or","color":"#FFE73F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" You made a longshot!","color":"#FFFFFF"},{"text":"\n+1 iron ingot","color":"#CFCFCF"},{"text":"\n+1 gold ingot","color":"#FFE73F"}]
