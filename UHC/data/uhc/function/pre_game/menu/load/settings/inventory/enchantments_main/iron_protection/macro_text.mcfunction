
#> uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_protection/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=14},tag=uhc.host] inventory.22 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=14},tag=uhc.host] inventory.22 with minecraft:iron_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}]
