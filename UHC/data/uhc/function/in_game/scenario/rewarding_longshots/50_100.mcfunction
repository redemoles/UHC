
#> uhc:in_game/scenario/rewarding_longshots/50_100
#
# @within			advancement #uhc:rewarding_longshots_50_100
#
#
# @description		Joueur touché entre 50 et 100 blocs
#

execute unless score #rewarding_longshots uhc.scenario matches 1 run return fail
advancement revoke @s only uhc:rewarding_longshots_50_100

execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Tu as réalisé un longshot !","color":"#FFFFFF"},{"text":"\n+1 lingot de fer","color":"#CFCFCF"},{"text":"\n+1 lingot d'or","color":"#FFE73F"}]
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Rewarding Longshots ","color":"#3FE7FF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" You made a longshot !","color":"#FFFFFF"},{"text":"\n+1 iron ingot","color":"#CFCFCF"},{"text":"\n+1 gold ingot","color":"#FFE73F"}]
give @s minecraft:iron_ingot 1
give @s minecraft:gold_ingot 1

