
#> uhc:translation/menu/load/settings/inventory_enchantments_bow_power
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.15 with minecraft:bow[minecraft:item_name=[{"text":"Puissance ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.inventory matches 17 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:bow[minecraft:item_name=[{"text":"Puissance ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.15 with minecraft:bow[minecraft:item_name=[{"text":"Power ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.inventory matches 17 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:bow[minecraft:item_name=[{"text":"Power ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]
