
#> uhc:translation/menu/load/settings/inventory_enchantments_diamond_sharpness
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.13 with minecraft:diamond_sword[minecraft:item_name=[{"text":"Tranchant ","color":"#FFFFFF","italic":false},{"text":"$(diamond_sharpness)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Épée en netherite incluse","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_sharpness"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.inventory matches 13 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:diamond_sword[minecraft:item_name=[{"text":"Tranchant ","color":"#FFFFFF","italic":false},{"text":"$(diamond_sharpness)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Épée en netherite incluse","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_sharpness"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.13 with minecraft:diamond_sword[minecraft:item_name=[{"text":"Sharpness ","color":"#FFFFFF","italic":false},{"text":"$(diamond_sharpness)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Netherite sword included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_sharpness"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.inventory matches 13 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:diamond_sword[minecraft:item_name=[{"text":"Sharpness ","color":"#FFFFFF","italic":false},{"text":"$(diamond_sharpness)","color":"#FF3F3F","bold":true},{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Netherite sword included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_sharpness"}]
