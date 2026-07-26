
#> uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_protection/macro_text
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(diamond_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Armure en netherite incluse","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_protection"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=12},tag=uhc.host] inventory.22 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(diamond_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Armure en netherite incluse","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_protection"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(diamond_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Netherite armor included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_protection"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=12},tag=uhc.host] inventory.22 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Protection ","color":"#FFFFFF","italic":false},$(diamond_protection),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Netherite armor included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_protection"}]
