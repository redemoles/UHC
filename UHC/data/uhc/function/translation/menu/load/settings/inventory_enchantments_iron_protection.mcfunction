
#> uhc:translation/menu/load/settings/inventory_enchantments_iron_protection
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(iron_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.inventory matches 14 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(iron_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(iron_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.inventory matches 14 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(iron_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]
