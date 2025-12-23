
#> uhc:pre_game/menu/load/gamemode/bhc/grids_check/main
#
# @within			uhc:pre_game/menu/selection/gamemode/bhc/main
#
#
# @description		Menu vérification des grilles de bingo
#

clear @s









function uhc:pre_game/menu/load/background/

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.13 with minecraft:barrier[minecraft:item_name=[{"text":"Terminé","color":"#F7F7F7","italic":false}],minecraft:custom_data={Tags:"bhc_display_grid"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.13 with minecraft:barrier[minecraft:item_name=[{"text":"Finished","color":"#F7F7F7","italic":false}],minecraft:custom_data={Tags:"bhc_display_grid"}]
