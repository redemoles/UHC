
#> uhc:translation/menu/load/tp
#
# @within			uhc:pre_game/menu/load/main/tp/main
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.4 with minecraft:feather[minecraft:item_name=[{"text":"Jump","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"tp_jump"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Retour au centre","color":"#3F9FCF","italic":false}],minecraft:custom_data={Tags:"tp_center"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.4 with minecraft:feather[minecraft:item_name=[{"text":"Jump","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"tp_jump"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Return to center","color":"#3F9FCF","italic":false}],minecraft:custom_data={Tags:"tp_center"}]
