
#> uhc:translation/in_game/scenario/rewarding_longshots_30_50
#
# @within			uhc:in_game/scenario/rewarding_longshots/30_50
#
#
# @description		Joueur touché entre 30 et 50 blocs
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Tu as réalisé un longshot !","color":"#FFFFFF"},{"text":"\n+1 lingot de fer","color":"#CFCFCF"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" You made a longshot !","color":"#FFFFFF"},{"text":"\n+1 iron ingot","color":"#CFCFCF"}]
