
#> uhc:translation/scenario/ores_limit_gold
#
# @within			uhc:in_game/scenario/ores_limit/tick
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Gold Limit ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Limite atteinte.","color":"#FF5F5F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Gold Limit ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Limit reached.","color":"#FF5F5F"}]
