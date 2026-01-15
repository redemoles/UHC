
#> uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/lunge/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:golden_spear[minecraft:item_name=[{"text":"Élan ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les lances incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=23},tag=uhc.host] inventory.22 with minecraft:golden_spear[minecraft:item_name=[{"text":"Élan ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Toutes les lances incluses","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:golden_spear[minecraft:item_name=[{"text":"Lunge ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All spears included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=23},tag=uhc.host] inventory.22 with minecraft:golden_spear[minecraft:item_name=[{"text":"Lunge ","color":"#FFFFFF","italic":false},$(interpreted_2),{"text":" maximum","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"All spears included","color":"#CFCFCF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}]
