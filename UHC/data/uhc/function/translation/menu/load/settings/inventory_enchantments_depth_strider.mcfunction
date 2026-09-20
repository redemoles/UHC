
#> uhc:translation/menu/load/settings/inventory_enchantments_depth_strider
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:golden_boots[minecraft:item_name=[{"text":"Agilité Aquatique ","color":"#FFFFFF","italic":false},{"text":"$(depth_strider)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les bottes incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.inventory matches 22 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:golden_boots[minecraft:item_name=[{"text":"Agilité Aquatique ","color":"#FFFFFF","italic":false},{"text":"$(depth_strider)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les bottes incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:golden_boots[minecraft:item_name=[{"text":"Depth Strider ","color":"#FFFFFF","italic":false},{"text":"$(depth_strider)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All boots included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.inventory matches 22 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:golden_boots[minecraft:item_name=[{"text":"Depth Strider ","color":"#FFFFFF","italic":false},{"text":"$(depth_strider)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All boots included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}]
