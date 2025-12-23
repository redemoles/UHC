
#> uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/depth_strider/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:golden_boots[minecraft:item_name=[{"text":"Agilité Aquatique ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les bottes incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=22},tag=uhc.host] inventory.22 with minecraft:golden_boots[minecraft:item_name=[{"text":"Agilité Aquatique ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les bottes incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:golden_boots[minecraft:item_name=[{"text":"Depth Strider ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All boots included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=22},tag=uhc.host] inventory.22 with minecraft:golden_boots[minecraft:item_name=[{"text":"Depth Strider ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All boots included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]
