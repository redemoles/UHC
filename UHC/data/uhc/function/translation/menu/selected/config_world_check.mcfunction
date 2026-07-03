
#> uhc:translation/translation/menu/selected/config_world_check
#
# @within			uhc:pre_game/menu/selection/main/host/config
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nVérifications du monde","color":"#3FCFFF","bold":true}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nWorld check","color":"#3FCFFF","bold":true}]
