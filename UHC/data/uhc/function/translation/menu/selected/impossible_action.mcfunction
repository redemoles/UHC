
#> uhc:translation/menu/selected/impossible_action
#
# @within			uhc:pre_game/menu/selected/tp
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Action impossible.","color":"#FF3F3F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Impossible action.","color":"#FF3F3F"}]
