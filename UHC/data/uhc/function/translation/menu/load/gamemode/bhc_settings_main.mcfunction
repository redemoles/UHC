
#> uhc:translation/menu/load/gamemode/bhc_settings_main
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/main
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Paramètres","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Settings","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Cancel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
