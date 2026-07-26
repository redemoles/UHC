
#> uhc:translation/translation/menu/selected/config_world_generation
#
# @within			uhc:pre_game/menu/selected/main/host/config
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nGénération du monde","color":"#3FCFFF","bold":true}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nWorld generation","color":"#3FCFFF","bold":true}]
