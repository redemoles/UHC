
#> uhc:pre_game/menu/load/settings/inventory/enchantments_main/axes_sharpness/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:diamond_axe[minecraft:item_name=[{"text":"Tranchant ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les haches incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_axes_sharpness"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=16},tag=uhc.host] inventory.22 with minecraft:diamond_axe[minecraft:item_name=[{"text":"Tranchant ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les haches incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_axes_sharpness"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:diamond_axe[minecraft:item_name=[{"text":"Sharpness ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All axes included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_axes_sharpness"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=16},tag=uhc.host] inventory.22 with minecraft:diamond_axe[minecraft:item_name=[{"text":"Sharpness ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All axes included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_axes_sharpness"}]
