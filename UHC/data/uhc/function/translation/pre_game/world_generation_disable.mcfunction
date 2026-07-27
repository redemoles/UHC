
#> uhc:translation/pre_game/world_generation_disable
#
# @within			uhc:pre_game/menu/load/world_generation/disable
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Génération du monde arrêtée.","color":"#FFFFFF"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"World generation stopped.","color":"#FFFFFF"}]
