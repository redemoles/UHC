
#> uhc:pre_game/menu/load/settings/inventory/enchantments_main/bow_power/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.15 with minecraft:bow[minecraft:item_name=[{"text":"Puissance ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=17},tag=uhc.host] inventory.22 with minecraft:bow[minecraft:item_name=[{"text":"Puissance ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.15 with minecraft:bow[minecraft:item_name=[{"text":"Power ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=17},tag=uhc.host] inventory.22 with minecraft:bow[minecraft:item_name=[{"text":"Power ","color":"#FFFFFF","italic":false},$(power),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}]
