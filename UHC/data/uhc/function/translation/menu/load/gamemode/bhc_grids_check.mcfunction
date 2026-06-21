
#> uhc:translation/menu/load/gamemode/bhc_grids_check
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/grids_check
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.13 with minecraft:barrier[minecraft:item_name=[{"text":"Terminé","color":"#F7F7F7","italic":false}],minecraft:custom_data={Tags:"bhc_display_grid"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.13 with minecraft:barrier[minecraft:item_name=[{"text":"Finished","color":"#F7F7F7","italic":false}],minecraft:custom_data={Tags:"bhc_display_grid"}]
