
#> uhc:translation/menu/load/settings/inventory_enchantments_iron_sharpness
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:iron_sword[minecraft:item_name=[{"text":"Tranchant ","color":"#FFFFFF","italic":false},$(iron_sharpness),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_sharpness"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.inventory matches 15 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:iron_sword[minecraft:item_name=[{"text":"Tranchant ","color":"#FFFFFF","italic":false},$(iron_sharpness),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_sharpness"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:iron_sword[minecraft:item_name=[{"text":"Sharpness ","color":"#FFFFFF","italic":false},$(iron_sharpness),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_sharpness"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.inventory matches 15 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:iron_sword[minecraft:item_name=[{"text":"Sharpness ","color":"#FFFFFF","italic":false},$(iron_sharpness),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_sharpness"}]
