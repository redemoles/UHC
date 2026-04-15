
#> uhc:translation/in_game/scenario/rewarding_longshots_150
#
# @within			uhc:in_game/scenario/rewarding_longshots/100_150
#
#
# @description		Joueur touché à + de 150 blocs
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Tu as réalisé un longshot !","color":"#FFFFFF"},{"text":"\n+2 lingots de fer","color":"#CFCFCF"},{"text":"\n+3 lingots d'or","color":"#FFE73F"},{"text":"\n+5 diamants","color":"#3FE7FF"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" You made a longshot !","color":"#FFFFFF"},{"text":"\n+2 iron ingots","color":"#CFCFCF"},{"text":"\n+3 gold ingots","color":"#FFE73F"},{"text":"\n+5 diamonds","color":"#3FE7FF"}]
