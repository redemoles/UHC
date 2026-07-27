
#> uhc:translation/menu/load/settings/inventory_enchantments_lunge
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:golden_spear[minecraft:item_name=[{"text":"Élan ","color":"#FFFFFF","italic":false},$(lunge),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les lances incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.inventory matches 23 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:golden_spear[minecraft:item_name=[{"text":"Élan ","color":"#FFFFFF","italic":false},$(lunge),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les lances incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:golden_spear[minecraft:item_name=[{"text":"Lunge ","color":"#FFFFFF","italic":false},$(lunge),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All spears included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.inventory matches 23 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:golden_spear[minecraft:item_name=[{"text":"Lunge ","color":"#FFFFFF","italic":false},$(lunge),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All spears included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]
